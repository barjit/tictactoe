class Player
  attr_accessor :team
  attr_accessor :player_name

  def initialize (player_name, team)
    @player_name = player_name
    @team = team
  end

end
