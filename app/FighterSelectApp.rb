class FighterSelectApp

  attr_reader :player 

  def run
    # welcome
    login_or_signup
    # wanna_see_favs?
    # some_method(some_argument)
    # exit
  end

  private

  def login_or_signup
    puts "Use Your Name to Login or Sign-up"
    answer = gets.chomp.downcase
    @player = Player.find_or_create_by(name: answer)
    sleep(1)
    puts "All good, #{@player.name.capitalize}"
    #binding.pry
  end

  
end
