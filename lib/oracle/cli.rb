class Oracle::CLI
  def call
    puts "Welcome."
    password
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
