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
    
    def self.find(index)
      @@all[index]  
    end
    
    
end