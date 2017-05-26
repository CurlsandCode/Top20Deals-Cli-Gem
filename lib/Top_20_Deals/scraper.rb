
class Top20Deals::Scraper

    def get_page
     Nokogiri::HTML(open("https://www.travelzoo.com/top20/")) 
    end

     def scrape_travelzoo_index
      self.get_page.css('div.deal-info.clearfix')
     end

    def make_deals
      scrape_travelzoo_index.each do |deal|
      self.new_from_index_page(deal)
     end
    end
    
    def new_from_index_page(deal)
        Top20Deals::Deals.new(
             deal.css('span.deal-headline-text').text.strip,
             deal.css('p.h6.deal-location').text.strip,
             deal.css('span.deal-headline-price').text.strip,
             deal.css('p.deal-summary').text.strip
            )
    end
end