class Oracle::Scraper
  #attributes and variables
  attr_accessor :url, :change_to_symbols, :symbols, :values



  #instance methods

  def self.create_hero_hash(url)
    @url = url
    self.scrape_site
    self.create_keys
    self.create_hash
  end

  def self.scrape_site
    character_page = Nokogiri::HTML(open("http://dc.wikia.com/wiki/#{@url}"))

    @change_to_symbols = character_page.css('aside .pi-data').collect {|sym| sym.css('h3').text}

    @values = character_page.css('aside .pi-data').collect {|val| val.css('.pi-data-value').text}

  end

  def self.create_keys
    @symbols = @change_to_symbols.collect do |sym|
      sym.split(" ").each{|word| word.downcase!}.join("_").to_sym
    end
  end

  def self.create_hash(symbols, values)
    @symbols.each do |symbol|
      @character_info_push[symbol] = @values[@symbols.index(symbol)]
    end
  end


end
