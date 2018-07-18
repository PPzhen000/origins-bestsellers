class OriginsBestsellers::Scraper

  def self.scrape_page(url, product_type = "nil") 
    doc = Nokogiri::HTML(open(url))
    # product_obj = []
    doc.css(".product-grid-wrapper").each do |products|
      products.css(".js-product.js-product-pr.product-brief").each do |each_product|
        product = OriginsBestsellers::Product.new
        product.name = each_product.css("a.product-brief__subtitle__link.js-spp-link").text
        product.price = each_product.css(".product-brief__price.down-price").text.strip
        product.url = "https://www.origins.com" + "#{each_product.css("h3").css("a").attr("href").text}"
        product.product_type = product_type 
        # product_obj << product  
      end
    end
      # product_obj
  end

  def self.scrape_skincare_page
    self.scrape_page("https://www.origins.com/skincare-bestsellers", "skincare") 
  end

  def self.scrape_bath_and_body_page
    self.scrape_page("https://www.origins.com/bathandbody-bestsellers", "bathandbody")
  end

  def self.scrape_makeup_page
    self.scrape_page("https://www.origins.com/makeup-bestsellers", "makeup") 
  end

end
