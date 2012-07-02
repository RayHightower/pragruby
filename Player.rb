class Player

  attr_accessor :name, :health
  attr_reader :show

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
    return "I\'m #{@name} with a health of #{@health} and a #{score} score."
  end

  def show
  end

end

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
    
  end

  def show_game_status
    puts "There are #{@players.size} players in #{self.title}:"
    show_players
  end

end

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

# puts player1
# puts player2
# puts player3

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play

knuckleheads.show_game_status

# Expected output:
# There are 3 players in Knuckleheads: 
# I'm Moe with a health of 100 and a 103 score.
# I'm Larry with a health of 60 and a 65 score.
# I'm Curly with a health of 125 and a 130 score.
