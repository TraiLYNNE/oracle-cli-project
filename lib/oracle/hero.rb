class Hero
  #attributes and variables
  attr_accessor :real_name, :current_alias
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
end
