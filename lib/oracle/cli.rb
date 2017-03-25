class Oracle::CLI
  def call
    puts "Welcome."
    puts "Please enter your secret identity:"
    pw_input = STDIN.noecho(&:gets).chomp
    if pw_input == "Bruce Wayne"
      puts "options"
    else
      puts "PasswordError"
      call
    end
  end
end
