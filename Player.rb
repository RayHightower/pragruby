class Player

  # attr_reader :name, :health
  # attr_writer :name, :health
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
puts player1

player2 = Player.new("larry", 60)
puts player2

player3 = Player.new("curly", 125)
puts player3

player3.blam
puts player3

player3.w00t
puts player3

puts "\n\nBegin Exercise Eight ********"

player2 = Player.new("larry", 60)
puts player2.name
player2.name = "Lawrence"
puts player2.name
puts player2.health
puts player2.score
puts player2
