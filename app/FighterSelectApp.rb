class FighterSelectApp

  attr_accessor :player 

  def run
    welcome
    @player = login_or_signup
    fighting_game
    main_menu
    #fightstyle_list
  end

  #private

  def welcome
    puts "Having a hardtime selecing a Fighter ??? 
    WELCOME TO FIGHTER SELECT"
    sleep(1.5)
  end


  def login_or_signup
    puts "Use Your Name to Login or Sign-up"
    answer = STDIN.gets.chomp.downcase
    @player = Player.find_or_create_by(name: answer)
    sleep(1)
    puts "All good, #{@player.name.capitalize}"
    @player
  end

  def main_menu
    sleep(1)
    puts "To choose FIGHT STYLE, enter 'fightstyle' "
    puts "To update FIGHTING GAME enter 'update' "
    puts "To delete Login enter 'delete' "
    puts "To EXIT, enter 'exit' "
    input = STDIN.gets.strip.downcase

    if input == "fightstyle"
      fightstyle_list
      main_menu
    elsif input == "update"
      # puts "what fighting game are you on now ?"
      # updated = STDIN.gets.chomp.downcase
      # puts "UPDATING..."
      # sleep(1)
      # puts "UPDATED"
      fighting_game 

      elsif input == "delete"
        @player.destroy
        login_or_signup
        
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
    input = STDIN.gets.strip.downcase

  end


  def fighting_game
    sleep(1.5)
    puts "What fighting game are you on ?"
    answer = STDIN.gets.chomp.downcase
    @player.update(fighting_game: answer) 
    sleep(1)
    main_menu
  end

  

  
end
