class GameHelper
  
  require_relative 'player'

  @allocated_team = ""

  def self.get_player(player_num)
    puts
    puts "--------------------------------------------------"
    print "\n"
    puts "Welcome to TicTacToe, please enter your name: "
    print "\n"
    puts "--------------------------------------------------"

    @name = gets.chomp
    
    if player_num == 1
      puts "Would you like to be X or O ?"
      
      while @team = gets.chomp
        case @team
          when "X"
            break
          when "O"
            break
          else
            puts "Please select O or X"
        end
      end
      @allocated_team = @team
    
    else
      if @allocated_team == "X"
        @team = "O"
      else
        @team = "X"
      end
    end

    puts "--------------------------------------------------"
    print "\n"
    puts "Welcome #{@name}, you are playing as team #{@team}"
    print "\n"
    puts "--------------------------------------------------"

    player = Player.new(@name, @team)

  end

end
