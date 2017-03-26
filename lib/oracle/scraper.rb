class Scraper
  #attributes and variables
  attr_accessor :url_ending, :url, :change_to_symbols, :symbols, :values, :character_info_push
  @@all = Array.new


  #initialize
  def initialize(url_ending)
    @@all << url_ending
    @url = "http://dc.wikia.com/wiki/#{url_ending}"
  end


  #class methods
  def self.all
    @@all
  end


  #instance methods

  def create_hero_hash
    scrape_site
    create_keys
    create_hash
    Hero.new(character_info_push)
  end

  def scrape_site
    character_page = Nokogiri::HTML(open(@url))

    @change_to_symbols = character_page.css('aside .pi-data').collect {|sym| sym.css('h3').text}

    @values = character_page.css('aside .pi-data').collect {|val| val.css('.pi-data-value').text}

  end

  def create_keys
    @symbols = @change_to_symbols.collect do |sym|
      sym.split(" ").each{|word| word.downcase!}.join("_").to_sym
    end
  end

  def create_hash
    @character_info_push = Hash.new
    @symbols.each do |symbol|
      @character_info_push[symbol] = @values[@symbols.index(symbol)]
    end
  end


end
