class Oracle::Hero
  #attributes and variables
  attr_accessor :url, :real_name, :current_alias, :aliases, :relatives, :affiliation, :base_of_operations, :alignment, :id, :identity, :race, :citizenship, :marital_status, :occupation, :gender, :height, :weight, :eyes, :hair, :universe, :place_of_birth, :creators
  @@all = Array.new

  #modules


  #initialize
  def initialize (url)
    @url = url
    hero_details = Oracle::Scraper.scrape_site(@url)
    hero_details.each{|k,v| self.send(("#{k}="), v)}
    self.class.all << self
  end


  #class methods
  def self.all
    @@all
  end

 end
