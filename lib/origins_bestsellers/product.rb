class Product
  attr_accessor :name, :price
  @@all = []

  def initialize(pruduct_hash)
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
      Product.new(each_product)
    end
  end
end
