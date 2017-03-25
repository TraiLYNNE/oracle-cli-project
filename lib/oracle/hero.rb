class Hero
  #attributes and variables
  attr_accessor :real_name, :current_alias, :affiliation, :boo, :identity, :citizenship, :marital_status, :occupation, :gender, :eyes, :hair, :universe, :pob
  @@all = Array.new

  #modules


  #initialize
  def initialize (hero_details)
    hero_details.each{|k,v| self.send(("#{k}="), v)}
    self.class.all << self
  end


  #class methods
  def self.all
    @@all
  end


  #instance methods
  def display_details
    puts "#{current_alias}"
    puts "Basic Information"
    puts "Real Name: #{real_name}"
    puts "Alias: #{current_alias}"
    puts "Affliation: #{affiliation}"
    puts "Base of Operation: #{boo}"
    puts "--------------"
    puts "Status:"
    puts "Identity: #{identity}"
    puts "Citizenship: #{citizenship}"
    puts "Marital Status: #{marital_status}"
    puts "Occupation: #{occupation}"
    puts "--------------"
    puts "Characteristices"
    puts "Gender: #{gender}"
    puts "Eyes: #{eyes}"
    puts "Hair: #{hair}"
    puts "--------------"
    puts "Origin:"
    puts "Universe: #{universe}"
    puts "Place of Birth: #{pob}"
  end
end
