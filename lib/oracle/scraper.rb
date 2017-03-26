class Scraper
  #attributes and variables
  attr_accessor :url_ending, :url, :change_to_symbols, :symbols, :values


  #modules


  #initialize
  def initialize(url_ending)
    @url = "http://dc.wikia.com/wiki/#{url_ending}"
  end


  #class methods


  #instance methods
  def scrape_site
    character_profile = Nokogiri::HTML(open(@url))

    @change_to_symbols = character_profile.css('aside .pi-data').collect {|sym| sym.css('h3').text}

    @values = character_profile.css('aside .pi-data').collect {|val| val.css('.pi-data-value').text}

   create_keys
   puts @symbols

  end

  def create_keys
    @symbols = @change_to_symbols.collect do |sym|
      sym.split(" ").each{|word| word.downcase!}.join("_").to_sym
    end
  end



end
