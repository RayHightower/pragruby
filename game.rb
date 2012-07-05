require_relative './spinner'
require_relative './player'
require_relative './game_turn'

class Game

  attr_reader :title

  def initialize(title)
    @title = title.capitalize
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def show_players
    puts @players 
  end

  def play(rounds=5)
    1.upto(rounds) do |round|
      puts "This is round #{round}"
      @players.each do |player|
        GameTurn.take_turn(player)
      end
    end
  end

  def show_game_status
    puts "There are #{@players.size} players in #{self.title}:"
    show_players
  end

  def print_stats
    strong_players, weak_players = @players.partition {|player| player.strong?}

    puts "\n\n#{strong_players.size} strong players\n"
    strong_players.each do |player|
      puts "#{player.name} (#{player.health})"
    end

    puts "\n\n#{weak_players.size} weak players\n"
    weak_players.each do |player|
      puts "#{player.name} (#{player.health})"
    end
    puts "\n\n"
  end

  def print_high_scores
    ranking = @players.score.sort
    puts ranking
    puts "\n\n"

    # ranking.each do |player|
    #   puts "#{player.name} ... #{player.score}"
    # end 
  end
end
