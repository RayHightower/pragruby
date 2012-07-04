class Game

  attr_reader :title

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def show_players
    puts @players 
  end

  def play
    show_game_status
    @spinner.roll

  end

  def show_game_status
    puts "There are #{@players.size} players in #{self.title}:"
    show_players
  end

end
