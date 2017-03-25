class Oracle::CLI
  def call
    puts "Welcome."
    password
    list_options
    puts "Who would you like more information about?"
    puts "(Select a number, say 'List', or 'done')"
    input = gets.chomp
  end

  def password
    puts "Please enter your secret identity:"
    pw_input = STDIN.noecho(&:gets).chomp
    if pw_input != "Bruce Wayne"
      puts "PasswordError" #Define later
      password
    end
  end

  def list_options
    puts "Here are your allies:"
    Hero.all.each.with_index {|a,i| puts "#{i+1}. #{a}"}
  end
end
