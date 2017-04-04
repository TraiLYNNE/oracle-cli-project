class Oracle::CLI
  DEFAULT_URLS = [
    "Bruce_Wayne_(Prime_Earth)",
    "Arthur_Curry_(Prime_Earth)",
    "Bartholomew_Allen_(Prime_Earth)",
    "Oliver_Queen_(Prime_Earth)",
    "John_Stewart_(Prime_Earth)",
    "Kal-El_(Prime_Earth)",
    "Diana_of_Themyscira_(Prime_Earth)"
   ]

  def call
    puts "Welcome."
    password
    create_defaults
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

  def create_defaults
    DEFAULT_URLS.each{|url| Oracle::Hero.new(url)}
  end

  def list_options
    puts "Here are your allies:"
    Oracle::Hero.all.sort_by!{|hero| hero.current_alias}.each.with_index(1) {|a,i| puts "#{i}. #{a.current_alias}"}
  end

  def select_option
    puts "Who would you like more information about?"
    puts "(Select a number, say 'add' 'list', or 'done')"
    input = gets.chomp
    case input
    when "list"
      list_options
      select_option
    when "done"
      puts "Right then. Back to work"
    when "add"
      puts "Please enter URL ending (Case Sensetive):"
      @url_ending = gets.chomp
      if @url_ending == " " || @url_ending == "" || Oracle::Hero.all.find{|hero| hero.url == @url_ending}
        begin
          raise SelectionError
        rescue SelectionError => error
          puts error.message
          list_options
          select_option
        end
      else
        Oracle::Hero.new(@url_ending)
        list_options
        select_option
      end
    else
      i = input.to_i
      c = Oracle::Hero.all.count
      if i.between?(1, c)
        display_details(i - 1)
        select_option
      else
        begin
          raise SelectionError
        rescue SelectionError => error
          puts error.message
          select_option
        end
      end
    end
  end

  def display_details(i)
    puts "#{Oracle::Hero.all[i].current_alias}"
    puts "Basic Information"
    puts "Real Name: #{Oracle::Hero.all[i].real_name}"
    puts "Alias: #{Oracle::Hero.all[i].current_alias}"
    puts "Affliation: #{Oracle::Hero.all[i].affiliation}"
    puts "Base of Operation: #{Oracle::Hero.all[i].base_of_operations}"
    puts "--------------"
    puts "Status:"
    puts "Identity: #{Oracle::Hero.all[i].identity}"
    puts "Citizenship: #{Oracle::Hero.all[i].citizenship}"
    puts "Marital Status: #{Oracle::Hero.all[i].marital_status}"
    puts "Occupation: #{Oracle::Hero.all[i].occupation}"
    puts "--------------"
    puts "Characteristices"
    puts "Gender: #{Oracle::Hero.all[i].gender}"
    puts "Eyes: #{Oracle::Hero.all[i].eyes}"
    puts "Hair: #{Oracle::Hero.all[i].hair}"
    puts "--------------"
    puts "Origin:"
    puts "Universe: #{Oracle::Hero.all[i].universe}"
    puts "Place of Birth: #{Oracle::Hero.all[i].place_of_birth}"
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
