class OriginsBestsellers::Product
  attr_accessor :name, :price, :url
  @@all = []

  def initialize(product_hash)
    product_hash.each do |attribute, value|
      self.send(("#{attribute}=") ,value)
    end
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create_from_product_array(product_array) #return value of Scraper.scrape_page methods
    product_array.each do |each_product|
      OriginsBestsellers::Product.new(each_product)
    end
  end

  def self.skincare_product
    self.create_from_product_array(OriginsBestsellers::Scraper.scrape_skincare_page)
  end

  def self.bath_and_body_product
    self.create_from_product_array(OriginsBestsellers::Scraper.scrape_bath_and_body_page)
  end

  def self.makeup_product
    self.create_from_product_array(OriginsBestsellers::Scraper.scrape_makeup_page)
  end

end
