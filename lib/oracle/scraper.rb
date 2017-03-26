class Scraper
  #attributes and variables
  attr_accessor :url_ending, :url


  #modules


  #initialize
  def initialize(url_ending)
    @url = "http://dc.wikia.com/wiki/#{url_ending}"
  end


  #class methods


  #instance methods
  def scrape_site
    character_profile = Nokogiri::HTML(open(@url))

    change_to_symbols = character_profile.css('aside .pi-data').collect {|sym| sym.css('h3').text}

    values_for_symbols = character_profile.css('aside .pi-data').collect {|val| val.css('.pi-data-value').text}
  end



end
