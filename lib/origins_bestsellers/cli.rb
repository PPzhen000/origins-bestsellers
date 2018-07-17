class OriginsBestsellers::CLI

  def call
    input = ""
    puts "Welcome! You are viewing Origins bestsellers!"
    while input != "exit"
    puts "Please view the bestsellers of Origins from 3 catagories: 1.SKINCARE, 2.BATH & BODY, 3.MAKEUP"
    puts "Which catagory would you like to see the list of best sellers? Please type in the corresponding number for each catagory"
    puts "To quit, type 'exit'."
    input = gets.strip

      @product_array = nil
      case input
      when "1"
        @product_array = OriginsBestsellers::Scraper.scrape_skincare_page
        display_products
      when "2"
        @product_array = OriginsBestsellers::Scraper.scrape_bath_and_body_page
        display_products
      when "3"
        @product_array = OriginsBestsellers::Scraper.scrape_makeup_page
        display_products
      when "exit"
        goodbye
      end
    end
  end

  def goodbye
    puts "Please come back to see our updates on bestsellers!"
  end

  def invalid
    puts "Not sure what you are looking for! Please type in the corresponding number for each catagory"
    puts "To quit, type 'exit'."
  end

  def display_products
    puts "Here's a list of all the bestsellers :)"
    @product_array.each.with_index(1) do |product, index|
      puts "#{index}. #{product.name} - #{product.price}"
    end
    puts "------THE END------"
    puts "Would you like to purchase an item from the list?"
    puts "Please enter the item number to purchase the item:"
    puts "Or you can type 'go back' to view products from other catagories"
    puts "Or you can type 'exit' to exit the viewing"
  end

end

# ./bin/origins-bestsellers
