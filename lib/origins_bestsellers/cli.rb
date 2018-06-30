class OriginsBestsellers::CLI

  def call
    puts "Welcome! You are viewing Origins bestsellers!"
  end


  def goodbye
    puts "Please come back to see our updates on bestsellers!"
  end


  def display_products(@product_array)
    @product_array.each.with_index(1) do |product, index|
      puts "#{index} - #{product.name} - #{product.price}"
      puts "-----------"
  end

end
