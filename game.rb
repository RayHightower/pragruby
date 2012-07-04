require_relative './spinner'
require_relative './player'

class Game

  attr_reader :title

  def initialize(title)
    @title = title
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
    show_game_status
    decider = @spinner.roll
    @player.w00t if decider >= 5
    @player.blam if decider <= 2
  end

  def show_game_status
    puts "There are #{@players.size} players in #{self.title}:"
    show_players
  end

end
