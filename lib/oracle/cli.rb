class Oracle::CLI
  def call
    puts "Welcome."
    password
    list_options
    select_option
  end

  def password
    puts "Please enter your secret identity:"
    pw_input = STDIN.noecho(&:gets).chomp
    if pw_input != "Bruce Wayne"
      begin
        raise PasswordError
      rescue PasswordError => error
        puts error.message
        password
      end
    end
  end

  def list_options
    puts "Here are your allies:"
    Hero.all.each.with_index {|a,i| puts "#{i+1}. #{a.current_alias}"}
  end

  def select_option
    puts "Who would you like more information about?"
    puts "(Select a number, say 'list', or 'done')"
    input = gets.chomp
    case input
    when "list"
      list_options
      select_option
    when "done"
      puts "Right then. Back to work"
    else
      i = input.to_i
      c = Hero.all.count
      if i.between?(1, c)
        Hero.all[input.to_i - 1].display_details
        select_option
      else
        raise SelectionError
      end
    end
  end
end

class PasswordError < StandardError
  def message
    "Please enter valid password"
  end
end

class SelectionError < StandardError

  def message
    "Please choose valid option"
  end
end
