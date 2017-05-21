class Top20Deals::Scraper

    def get_page
     Nokogiri::HTML(open("https://www.travelzoo.com/top20/")) 
    end

     def scrape_travelzoo_index
      self.get_page.css('div.deal-info.clearfix')
     end

    def make_deals
      scrape_travelzoo_index.each do |deal|
      Top20Deals::Deals.new_from_index_page(deal)
      end
    end
end