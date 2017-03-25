class Hero
  #attributes and variables
  attr_accessor :real_name, :current_alias, :affiliation, :boo, :identity, :citizenship, :marital_status, :occupation, :race, :gender, :height, :weight, :eyes, :hair, :skin, :universe, :pob
  @@all = Array.new

  #modules


  #initialize
  def initialize (real_name = "Bruce Wayne", current_alias = "Batman")
    @real_name = real_name
    @current_alias = current_alias
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
    puts "Race: #{race}"
    puts "--------------"
    puts "Characteristices"
    puts "Gender: #{gender}"
    puts "Height: #{height}"
    puts "Weight: #{weight}"
    puts "Eyes: #{eyes}"
    puts "Hair: #{hair}"
    puts "Skin: #{skin}"
    puts "--------------"
    puts "Origin:"
    puts "Universe: #{universe}"
    puts "Place of Birth: #{pob}"
  end
end
