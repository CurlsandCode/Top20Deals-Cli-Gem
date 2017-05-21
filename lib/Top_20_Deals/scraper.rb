Class Top20Deals::Deals

    def get_page
     Nokogiri::HTML(open("https://www.travelzoo.com.top20/"))
    end

     def scrape_travelzoo_index
      self.get_pages.css('div.deal-info.clearfix')
     end

    def makes_deals
      scrape_travelzoo_index.each do |deal|
      Top20Deals::Deals.new_from_index_page(deal)
      end
end