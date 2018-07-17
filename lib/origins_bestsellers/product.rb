class OriginsBestsellers::Product
  attr_accessor :name, :price, :url

  def initialize(name = nil, price = nil, url = nil)
    @name = name
    @price = price
    @url = url
  end

end
