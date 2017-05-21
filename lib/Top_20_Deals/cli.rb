class Top20Deals::CLI
    
    def call
        list_deals
        menu
        goodbye
    end
    
    def list_deals
         puts "Hi! Here are this weeks Top 20 Travel Deals:"
         puts "1.Upscale Mexico All-Inclusive Retreat incl. flights - Riviera Nayarit - $529"
         puts "2.Upscale France All-Inclusive Retreat incl. flights - Nice - $829"
         puts "3.Upscale Jamaica All-Inclusive Retreat incl. flights - Kingston - $629"
        end
    
    def menu
        input = nil
        while input != "exit"
         puts "Enter the number (1-20) of the deal you would like more information on. Or type 'list' to see the list again or 'exit'."
            input = gets.strip.downcase
            if input == "1"
            puts "1.Upscale Mexico All-Inclusive Retreat incl. flights - Riviera Nayarit - $529 - This luxe retreat offers a new spin on the traditional all-inclusive experience (and we love it)."
            elsif input == "2"
            puts "2.Upscale France All-Inclusive Retreat incl. flights - Nice - $829 -  This luxe retreat offers a new spin on the traditional all-inclusive experience (and we love it)."
             elsif input == "3"
            puts "3.Upscale Jamaica All-Inclusive Retreat incl. flights - Kingston - $629 -  This luxe retreat offers a new spin on the traditional all-inclusive experience (and we love it)." 
                elsif input == "list"
                list_deals
                elsif input == "exit"
                goodbye
                else
                "Opps try again, invalid entry!"
           end
        end
    end
    
    def goodbye
        puts "See you next time!"
    end
end