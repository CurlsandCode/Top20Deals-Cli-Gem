class Top20Deals::Deals
    
    attr_accessor :title, :place, :price, :description
    
    @@all = []
    
 def initialize(title=nil, place=nil, price=nil, description=nil)
    @title = title
    @place = place
    @price = price
    @description = description
    @@all << self
  end
    
    def self.all
        @@all
    end
    
    def self.new_from_index_page(deal)
        self.new(
            deal.css('span.deal-headline-text').text.strip,
            deal.css('p.h6.deal-location').text.strip,
            deal.css('span.deal-headline-price').text.strip,
            deal.css('p.deal-summary').text.strip
            )
    end
end