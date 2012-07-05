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
    @players.each do |player|
      number_spun = @spinner.spin
      if number_spun >= 5
        player.w00t
      elsif number_spun <= 2
        player.blam
      else
        puts "#{player} was skipped"
      end
    end
  end

  def show_game_status
    puts "There are #{@players.size} players in #{self.title}:"
    show_players
  end

end
