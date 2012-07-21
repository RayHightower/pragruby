require_relative './treasure_trove'

class Player

  attr_accessor :name, :health
  attr_reader :show, :score, :points

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
    @points = 0
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
    return "I\'m #{@name} with a health of #{@health} and a #{score} score.\n#{@name}'s treasure bag contains #{treasure_bag}.\n#{@name}'s Grand Total Points = #{points}\n\n"
  end

  def strong?  # RSpec allows some syntactic sugar w/predicate methods.
    @health > 100    
  end

  def <=>(other_player)
    other_player.score <=> @score
  end

  def get_treasure
    @treasure = TreasureTrove::TREASURES.sample

    if !@found_treasure 
      @found_treasure = Hash.new(0) 
    end

    @found_treasure[@treasure.name.to_sym] += @treasure.points

    puts "Treasure selected in \'get_treasure\' method: #{@treasure.name}"
  end

  def found_treasure(treasure = TreasureTrove::TREASURES.sample)

    if !@found_treasure 
      @found_treasure = Hash.new(0) 
    end

    @found_treasure[treasure.name.to_sym] += treasure.points

    puts "Treasure selected in \'get_treasure\' method: #{treasure.name}"
  end

  def treasure_bag
    return "no treasure in this bag" if !@found_treasure
    @found_treasure
  end

  def points
    return 0 if !@found_treasure
    @found_treasure.values.reduce(:+)
  end

  def each_found_treasure
    puts "+++++++++++ In player.rb, @found_treasure is #{@found_treasure} ++++++++++++ "

    @found_treasure.each do |n|
      yield n
    end

#      stuff = Treasure.new(:skillet, 200) 
#      yieldstuff = [
#         Treasure.new(:skillet, 200), 
#         Treasure.new(:hammer, 50), 
#         Treasure.new(:bottle, 25)
#      ]
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

