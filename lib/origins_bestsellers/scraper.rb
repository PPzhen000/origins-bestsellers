class OriginsBestsellers::Scraper

  def self.scrape_page(url)
    doc = Nokogiri::HTML(open(url))
    product = []
    doc.css(".product-grid-wrapper").each do |products|
      products.css(".js-product.js-product-pr.product-brief").each do |each_product|
        product_name = each_product.css("a.product-brief__subtitle__link.js-spp-link").text
        product_price = each_product.css(".product-brief__price.down-price").text.strip
        product_url = "https://www.origins.com" + "#{each_product.css("h3").css("a").attr("href").text}"
        product << {name: product_name, price: product_price, url: product_url}
      end
    end
      product
  end

  def self.scrape_skincare_page
    self.scrape_page("https://www.origins.com/skincare-bestsellers")
  end


  def self.skincare_product
    self.scrape_skincare_page
  end

  def self.scrape_bath_and_body_page
    self.scrape_page("https://www.origins.com/bathandbody-bestsellers")
  end

  def self.bath_and_body_product
    self.scrape_bath_and_body_page
  end

  def self.scrape_makeup_page
    self.scrape_page("https://www.origins.com/makeup-bestsellers")

  end

  def self.makeup_product
    self.scrape_makeup_page
  end

end
