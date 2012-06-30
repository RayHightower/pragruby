class Player

  attr_accessor :name, :health
  
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
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
    return "\nI\'m #{@name} with a health of #{@health} and a #{score} score."
  end

end

class Game

  def add_player
    
  end

  def play_game
    
  end

end


player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

puts "\n\nBegin Exercise Eight ********"

player2 = Player.new("larry", 60)

puts "\n\nBegin Exercise Nine ********"

players = [player1, player2, player3]


index = 0
players.each do |player|
  puts player
end



