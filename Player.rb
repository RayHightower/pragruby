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

end


