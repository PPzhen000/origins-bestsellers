class OriginsBestsellers::Product
  attr_accessor :name, :price, :url, :product_type 
  @@all = [];
  
  def initialize(name = nil, price = nil, url = nil)
    @name = name
    @price = price
    @url = url
    @@all << self 
  end

  def self.all
    @@all
  end 
  
  def self.find_by_product_type(product_type)
    self.all.select {|ele| ele.product_type == product_type} 
  end 
end
