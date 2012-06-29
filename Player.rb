class Player

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end

  def to_s
    return "\nI'm #{@name} with a health of #{@health}. Object_ID #{self.object_id}."
  end

  def w00t
    puts "\n#{@name} got w00ted!"
    @health += 15
  end

  def blam
    puts "\n#{@name} got blammed!"
    @health -= 10
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

