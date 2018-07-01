class OriginsBestsellers::CLI

  def call
    input = ""
    puts "Welcome! You are viewing Origins bestsellers!"
    while input != "exit"
    puts "Please view the bestsellers of Origins from 3 catagories: 1.SKINCARE, 2.BATH & BODY, 3.MAKEUP"
    puts "Which catagory would you like to see the list of best sellers? Please type in the corresponding number for each catagory"
    puts "To quit, type 'exit'."
    input = gets.strip

      @product_array = []
      case input
      when "1"
        @product_array = OriginsBestsellers::Product.skincare_product
        display_products
      when "2"
        @product_array = OriginsBestsellers::Product.bath_and_body_product
        display_products
      when "3"
        @product_array = OriginsBestsellers::Product.makeup_product
        display_products
      when "exit"
        goodbye
      end
    end
  end

  def goodbye
    puts "Please come back to see our updates on bestsellers!"
  end


  def display_products
    @product_array.each.with_index(1) do |product, index|
      puts "#{index} - #{product[:name]} - #{product[:price]}"
      puts "-----------"
    end
  end

end

# ./bin/origins-bestsellers
