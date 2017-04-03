class Oracle::Hero
  #attributes and variables
  attr_accessor :url, :real_name, :current_alias, :aliases, :relatives, :affiliation, :base_of_operations, :alignment, :id, :entity, :race, :citizenship, :marital_status, :occupation, :gender, :height, :weight, :eyes, :hair, :universe, :place_of_birth, :creators
  @@all = Array.new

  #modules


  #initialize
  def initialize (url)
    @url = url
    hero_details = Oracle::Scraper.create_hero_hash(@url)
    hero_details.each{|k,v| self.send(("#{k}="), v)}
    self.class.all << self
  end


  #class methods
  def self.all
    @@all
  end


#   #instance methods
#   def display_details
#     puts "#{current_alias}"
#     puts "Basic Information"
#     puts "Real Name: #{real_name}"
#     puts "Alias: #{current_alias}"
#     puts "Affliation: #{affiliation}"
#     puts "Base of Operation: #{base_of_operations}"
#     puts "--------------"
#     puts "Status:"
#     puts "Identity: #{identity}"
#     puts "Citizenship: #{citizenship}"
#     puts "Marital Status: #{marital_status}"
#     puts "Occupation: #{occupation}"
#     puts "--------------"
#     puts "Characteristices"
#     puts "Gender: #{gender}"
#     puts "Eyes: #{eyes}"
#     puts "Hair: #{hair}"
#     puts "--------------"
#     puts "Origin:"
#     puts "Universe: #{universe}"
#     puts "Place of Birth: #{place_of_birth}"
#   end
 end
