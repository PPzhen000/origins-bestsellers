class OriginsBestsellers::Scraper

  def self.scrape_skincare_page
    skincare_page = Nokogiri::HTML(open("https://www.origins.com/skincare-bestsellers"))
    skincare_product = []
    count = 0
    while skincare_page.css(".product-brief__subtitle").size > count do
      product_name = skincare_page.css(".product-brief__subtitle")[count].text.strip
      product_price = skincare_page.css(".product-brief__price.down-price")[count].text.strip
      skincare_product[count] = {name: product_name, price: product_price}
      count +=1
    end
    skincare_product
  end

  def self.scrape_bath_and_body_page
    bath_and_body_page = Nokogiri::HTML(open("https://www.origins.com/bathandbody-bestsellers"))
    bath_and_body_product = []
    count = 0
    while bath_and_body_page.css(".product-brief__subtitle").size > count do
      product_name = bath_and_body_page.css(".product-brief__subtitle")[count].text.strip
      product_price = bath_and_body_page.css(".product-brief__price.down-price")[count].text.strip
      bath_and_body_product[count] = {name: product_name, price: product_price}
      count +=1
    end
    bath_and_body_product
  end

  def self.scrape_makeup_page
    makeup_page = Nokogiri::HTML(open("https://www.origins.com/makeup-bestsellers"))
    makeup_product = []
    count = 0
    while makeup_page.css(".product-brief__subtitle").size > count do
      product_name = makeup_page.css(".product-brief__subtitle")[count].text.strip
      product_price = makeup_page.css(".product-brief__price.down-price")[count].text.strip
      makeup_product[count] = {name: product_name, price: product_price}
      count +=1
    end
    makeup_product
  end

end
