class OriginsBestsellers::CLI

  def call
    puts "Welcome! You are viewing Origins bestsellers!"
    puts "Please view the bestsellers of Origins from 3 catagories: 1.SKINCARE, 2.BATH & BODY, 3.MAKEUP"
    puts "Which catagory would you like to see the list of best sellers? Please type in the corresponding number for each catagory or type exit:"
    input = gets.strip

  end




  def goodbye
    puts "Please come back to see our updates on bestsellers!"
  end


  def display_products
    @product_array.each.with_index(1) do |product, index|
      puts "#{index} - #{product.name} - #{product.price}"
      puts "-----------"
    end
  end

end

# ./bin/origins-bestsellers
