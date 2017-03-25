class Oracle::CLI
  def call
    puts "Welcome."
    password
    list_options
    puts "Who would you like more information about?"
    puts "(Select a number, say 'List', or 'done')"
    input = gets.chomp
    case input
    when "list"
      list_options
    when "done"
      puts "Right then. Back to work"
    else
      puts "details"
    end
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
