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
    show_game_status
    20.times do
      @players.sample.w00t
      @players.sample.blam
    end
  end

  def show_game_status
    puts "There are #{@players.size} players in #{self.title}:"
    show_players
  end

end

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play

knuckleheads.show_game_status

player1 = Player.new("simon")
player2 = Player.new("alvin", 60)
player3 = Player.new("theodore", 125)

chipmunks = Game.new("Chipmunks")
chipmunks.add_player(player1)
chipmunks.add_player(player2)
chipmunks.add_player(player3)
chipmunks.play

chipmunks.show_game_status
