module Playable
  
  def w00t
    puts "\n#{self.name} got w00ted!"
    @health += 15
  end

  def blam
    puts "\n#{self.name} got blammed!"
    @health -= 10
  end

  def strong?  # RSpec allows some syntactic sugar w/predicate methods.
    @health > 100    
  end

end
