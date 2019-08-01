class CoffeeSale::Scraper
  
  def self.scrape_coffees
    coffees = []
    
    doc = Nokogiri::HTML(open("https://coffeeicon.com/single-serve-cups/managers-special/"))
    
    results = doc.css("div.card-body").each do |c|
      coffee_details = {}
      coffee_details[:name] = c.css("h4 a").text
      coffee_details[:orig_pricee] = c.css("span.price.price--non-sale").text.strip
      coffee_details[:sale_pricee] = c.css("span.price.price--withoutTax").text.strip
      coffees << coffee_details
    end
    coffees
  end
  
end