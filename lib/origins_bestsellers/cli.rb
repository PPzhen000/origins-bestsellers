class OriginsBestsellers::CLI

  def call
    input = ""
    puts "Welcome! You are viewing Origins bestsellers :)".colorize(:red)
    while input != "exit"
    puts "Please view the bestsellers of Origins from 3 catagories: " + "1.SKINCARE, 2.BATH & BODY, 3.MAKEUP".colorize(:red)
    puts "Which catagory would you like to see the list of best sellers? Please type in the corresponding number for each catagory"
    puts "To quit, type 'exit'."
    input = gets.strip

      @product_array = nil
      case input
      when "1"
        @product_array = OriginsBestsellers::Scraper.scrape_skincare_page
        display_products
        purchase_item
      when "2"
        @product_array = OriginsBestsellers::Scraper.scrape_bath_and_body_page
        display_products
        purchase_item
      when "3"
        @product_array = OriginsBestsellers::Scraper.scrape_makeup_page
        display_products
        purchase_item
      when "exit"
        goodbye
        break
      else
        invalid
      end
    end
  end

  def goodbye
    puts "Please come back to see our updates on bestsellers!".colorize(:light_blue)
  end

  def invalid
    puts "Not sure what you are looking for! Please type in the corresponding number for each catagory"
    puts "------------"
  end

  def display_products
    puts "Here's a list of all the bestsellers :)".colorize(:green)
    puts "------------"
    @product_url = []
    @product_array.each.with_index(1) do |product, index|
      puts "#{index}. #{product.name} - #{product.price}"
      @product_url << product.url
    end
    puts "------THE END------"
  end

  def purchase_item
    puts "Would you like to purchase an item from the list? Please enter 'Y' or 'N':"
    input = gets.strip.upcase
    if input == "Y"
      puts "Please enter the item number to purchase the item:"
      product_number = gets.strip
      make_a_purchase(@product_url[product_number.to_i - 1])
    elsif input == "N"
      puts "Please keep browsing and hope you would find something you like!"
    end
  end

  def make_a_purchase(product_url)
    # system(open product_url)
    puts "Here is the link to purchase the product: "
    puts "#{product_url}".colorize(:light_blue)
    puts "~~~~~~~~~~~~~"
  end

end

# ./bin/origins-bestsellers
