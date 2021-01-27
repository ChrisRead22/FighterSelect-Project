class FighterSelectApp

  attr_reader :player 

  def run
    welcome
    login_or_signup
    fighting_game
    main_menu
    #fightstyle_list
  end

  private

  def welcome
    puts "Having a hardtime selecing a Fighter ??? 
    WELCOME TO FIGHTER SELECT"
    sleep(1.5)
  end


  def login_or_signup
    puts "Use Your Name to Login or Sign-up"
    answer = gets.chomp.downcase
    @player = Player.find_or_create_by(name: answer)
    sleep(1)
    puts "All good, #{@player.name.capitalize}"
    #binding.pry
  end

  def main_menu
    sleep(1)
    puts "To choose FIGHT STYLE, enter 'fightstyle' "
    puts "To update FIGHTING GAME enter 'update' "
    puts "To EXIT, enter 'exit' "
    input = gets.strip.downcase

    if input == "fightstyle"
      fightstyle_list
      main_menu
    elsif input == "update"
      puts "what fighting game are you on now ?"
      updated = gets.chomp.downcase
      puts "UPDATING..."
      sleep(1)
      puts "UPDATED"
      main_menu
    elsif input == "exit"
      puts "Goodbye, #{@player.name.capitalize}"
    else
      puts "Invalid entry, try again"
      main_menu
    end
  end

  def fightstyle_list
    puts "CHOOSE YOUR FIGHT STYLE"
    puts ""
    puts ""
    puts "1. Standard"
    puts "2. Zoner "
    puts "3. Grappler"
    input = gets.strip.downcase

    fightstyle_select(input)
  end

  def fightstyle_select(fightstyle)
    

  end


  def fighting_game
    sleep(1.5)
    puts "What fighting game are you on ?"
    answer = gets.chomp.downcase
    sleep(1)
  end

  

  
end
