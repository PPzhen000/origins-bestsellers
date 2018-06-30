class Scraper

  def self.scrape_skincare_page
    skincare_page = Nokogiri::HTML(open("https://www.origins.com/skincare-bestsellers"))
  end

  def self.scrape_bath_and_body_page
    bath_and_body_page = Nokogiri::HTML(open("https://www.origins.com/bathandbody-bestsellers"))
  end

  def self.scrape_makeup_page
    makeup_page = Nokogiri::HTML(open("https://www.origins.com/makeup-bestsellers"))
  end

end
