class Oracle::Scraper

  def self.scrape_site(url)
    #scrape site
    info_hash = Hash.new
    character_page = Nokogiri::HTML(open("http://dc.wikia.com/wiki/#{url}"))

    #collect information in arrays
    properties = character_page.css('aside .pi-data').collect {|sym| sym.css('h3').text}

    values = character_page.css('aside .pi-data').collect {|val| val.css('.pi-data-value').text}

    #turn the arrays into a hash
    properties.each{|property| info_hash[property.split(" ").each{|word| word.downcase!}.join("_").to_sym] = values[properties.index(property)]}

    info_hash

  end

end
