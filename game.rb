require_relative './spinner'
require_relative './player'
require_relative './game_turn'

class Game

  attr_reader :title

  def initialize(title)
    @title = title.capitalize
    @players = []
    @spinner = Spinner.new
  end

  def add_player(player)
    @players << player
  end

  def show_players
    puts @players 
  end

  def play
    @players.each do |player|
      GameTurn.take_turn(player)
    end
  end

  def show_game_status
    puts "There are #{@players.size} players in #{self.title}:"
    show_players
  end

end
