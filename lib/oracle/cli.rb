class Oracle::CLI
  def call
    puts "Welcome."
    password
    puts "Here are you allies:"
    allies = ["1", "2", "3", "4"]
    allies.each {|a| puts "#{a}"}
  end

  def password
    puts "Please enter your secret identity:"
    pw_input = STDIN.noecho(&:gets).chomp
    if pw_input == "Bruce Wayne"
      puts "options"
    else
      puts "PasswordError" #Define later
      password
    end
  end
end
