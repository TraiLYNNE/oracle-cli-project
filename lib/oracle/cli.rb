class Oracle::CLI
  def call
    puts "Welcome."
    puts "Please enter your secret identity:"
    pw_input = STDIN.noecho(&:gets).chomp
  end
end
