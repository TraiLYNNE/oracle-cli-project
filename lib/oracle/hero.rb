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
    puts "Real Name: #{real_name}"
    puts "Alias: #{current_alias}"
  end
end
