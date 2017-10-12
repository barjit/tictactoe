require_relative 'game_helper'

# Board class does a lot of the heavy lifting when it comes to game logic.
class Board
  attr_accessor :gameboard

  def initialize
    @gameboard = Array.new(3) { Array.new(3) { ' ' } }
  end

  def print_board
    print '-------------'
    print "\n"
    @gameboard.each do |row|
      print '|'
      row.each do |col|
        print ' ' + col + ' |'
      end
      print "\n"
      print '-------------'
      print "\n"
    end
  end

  @@choices = []

  def get_input
    puts 'Please select a square to place your piece (numbers 1 to 9)'
    @choice = gets.chomp
    while @@choices.include? @choice
      puts 'please choose an empty square'
      @choice = gets.chomp
    end
    @@choices << @choice
    puts
    puts
  end

  def input_to_position(choice)
    case choice
    when '1'
      @row = 0
      @col = 0

    when '2'
      @row = 0
      @col = 1

    when '3'
      @row = 0
      @col = 2

    when '4'
      @row = 1
      @col = 0

    when '5'
      @row = 1
      @col = 1

    when '6'
      @row = 1
      @col = 2

    when '7'
      @row = 2
      @col = 0

    when '8'
      @row = 2
      @col = 1

    when '9'
      @row = 2
      @col = 2

    else
      puts 'please choose a valid number'
      get_input
    end
  end

  def set_cell(row, col, value)
    @gameboard[row][col] = value
  end

  def get_cell(row, col)
    @gameboard[row][col]
  end

  def winning_line?(cell1, cell2, cell3)
    if cell1 == ' '
      false
    else
      if cell1 == cell2
        if cell2 == cell3
          true
          @winning_team = cell3
        end
      end
    end
  end

  def game_over?
    if winning_line?(get_cell(0, 0), get_cell(0, 1), get_cell(0, 2))
      puts "Game over, #{@winning_team} is the winner!"
      true
    elsif winning_line?(get_cell(1, 0), get_cell(1, 1), get_cell(1, 2))
      puts "Game over, #{@winning_team} is the winner!"
      true
    elsif winning_line?(get_cell(2, 0), get_cell(2, 1), get_cell(2, 2))
      puts "Game over, #{@winning_team} is the winner!"
      true
    elsif winning_line?(get_cell(0, 0), get_cell(1, 0), get_cell(2, 0))
      puts "Game over, #{@winning_team} is the winner!"
      true
    elsif winning_line?(get_cell(0, 1), get_cell(1, 1), get_cell(2, 1))
      puts "Game over, #{@winning_team} is the winner!"
      true
    elsif winning_line?(get_cell(0, 2), get_cell(1, 2), get_cell(2, 2))
      puts "Game over, #{@winning_team} is the winner!"
      true
    elsif winning_line?(get_cell(0, 0), get_cell(1, 1), get_cell(2, 2))
      puts "Game over, #{@winning_team} is the winner!"
      true
    elsif winning_line?(get_cell(2, 0), get_cell(1, 1), get_cell(0, 2))
      puts "Game over, #{@winning_team} is the winner!"
      true
    else
      false
    end
  end
end
