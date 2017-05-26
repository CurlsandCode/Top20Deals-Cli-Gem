class Top20Deals::CLI
    
    def call
        Top20Deals::Scraper.new.make_deals
        list_deals
        menu
     end
    
    def list_deals
         puts "Hi! Here are this weeks Top 20 Travel Deals:"
           @deals = Top20Deals::Deals.all
           @deals.each.with_index(1) do |deal, i|
               puts "#{i}. #{deal.title} - #{deal.place} - #{deal.price}"
           end
        end
    
    def menu
        input = nil
        while input != "exit"
         puts "Enter the number (1-20) of the deal you would like more information on. Or type 'list' to see the list again or 'exit'."
            input = gets.strip.downcase
            
            if input.to_i > 0 && input.to_i-1 <= 20
                the_deal = Top20Deals::Deals.find(input.to_i - 1)
                puts "#{the_deal.title} - #{the_deal.place} - #{the_deal.price} - #{the_deal.description}"
                elsif input == "list"
                list_deals
                elsif input == "exit"
                goodbye
                else
                puts "Opps try again, invalid entry!"
           end
        end
    end
    
    def goodbye
        puts "See you next time!"
    end
end