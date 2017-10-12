require_relative 'board'
require_relative 'player'
require_relative 'game_helper'

@board = Board.new
player1 = GameHelper.get_player(1)
player2 = GameHelper.get_player(2)

until @board.game_over?
  @board.print_board
  @board.get_input
  @board.input_to_position(@choice)
  @board.set_cell(@row, @col, player1.team)
  @board.print_board

  break if @board.game_over?

  @board.get_input
  @board.input_to_position(@choice)
  @board.set_cell(@row, @col, player2.team)
end
