require_relative './treasure_trove'

class Player

  attr_accessor :name, :health
  attr_reader :show, :score, :points

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
    @found_treasurers = Hash.new(0)
  end

  def w00t
    puts "\n#{@name} got w00ted!"
    @health += 15
  end

  def blam
    puts "\n#{@name} got blammed!"
    @health -= 10
  end

  def score
    @score = @health + @name.length
  end

  def to_s
    return "I\'m #{@name} with a health of #{@health} and a #{score} score."
  end

  def strong?  # RSpec allows some syntactic sugar w/predicate methods.
    @health > 100    
  end

  def <=>(other_player)
    other_player.score <=> @score
  end

  def add_to_found_treasure(treasure)
    @found_treasures[treasure.name] += treasure.points
    puts "#{player.name} found a #{treasure.name} worth #{treasure.points} points."
    puts "#{player.name}'s treasures: #{@found_treasures}"
    puts "#{player.name}'s points: #{@found_treasures.points}"
  end

  def found_treasure
    @found_treasure
  end

  def points
    @found_treasures.values.reduce(:+)
  end
end

if __FILE__ == $0
  player1 = Player.new("moe")
  player2 = Player.new("larry", 600)
  player3 = Player.new("curly", 1295)

  puts player1
  puts player2
  puts player3

  puts "#{player1.name}'s found treasure: #{player1.found_treasure}"
  puts "#{player1.name}'s points: #{player1.points}"
end

