Class Top20Deals::Deals

 def get_page
     Nokogiri::HTML(open("https://www.travelzoo.com.top20/"))
 end
end