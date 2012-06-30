class Player

  attr_accessor :name, :health
  
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end

  def to_s
    return "\nI'm #{@name} with a health of #{@health} and a score of #{@score}."
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

end

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

puts "\n\nBegin Exercise Eight ********"

player2 = Player.new("larry", 60)

puts "\n\nBegin Exercise Nine ********"

players = [player1, player2, player3]

puts "There are #{players.size} players in the game."

index = 0
players.each do
  player = players[index]
  puts "I'm #{player.name} with a health of #{player.health} and a #{player.score} score."
  index += 1
end


