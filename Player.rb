class Player

  def initialize(name, health=0)
    @name = name
    @health = health
    puts "I'm #{@name} with a health of #{@health}."
  end

end


player1 = Player.new("moe")
puts player1

player2 = Player.new("larry", 60)
puts player2

player3 = Player.new("curly", 125)
puts player3


