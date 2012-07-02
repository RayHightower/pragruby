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

  def play
    
  end

end

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play

# Expected output:
# There are 3 players in Knuckleheads: 
# I'm Moe with a health of 100 and a 103 score.
# I'm Larry with a health of 60 and a 65 score.
# I'm Curly with a health of 125 and a 130 score.
