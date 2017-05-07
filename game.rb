class GameHelper
  
  require_relative 'player'

  def self.get_player
    puts "Welcome to TicTacToe, please enter your name and team: "
    @name = gets.chomp
    puts "Would you like to be X or O ?"
    
    while @team = gets.chomp # loop while getting user input
      case @team
        when "X"
          break # make sure to break so you don't ask again
        when "O"
          break # and again
        else
          puts "Please select O or X"
      end
    end

    puts "Welcome #{@name}, you are playing as team #{@team}"

    player = Player.new(@name, @team)
  end
    



end
