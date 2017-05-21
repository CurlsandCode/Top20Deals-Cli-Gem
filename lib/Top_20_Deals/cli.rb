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
    end
    
    def goodbye
    end
end