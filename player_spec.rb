require_relative './player'

describe Player do

  context "strong player" do
    before do
      @player = Player.new("hercules", 150)
    end

    # RSpec allows some syntactic sugar w/predicate methods. strong?
    it "should be a player with strong health" do
      @player.should be_strong
    end
  end

  context "weak player" do
    before do
      @player = Player.new("junior", 100)
    end

    it "should be a player with weak health" do
      @player.should_not be_strong
    end
  end

  context "general player" do

    before do
      @player = Player.new("geronimo", 200)
      @initial_health = @player.health
    end

    it "has a capitalized name" do
      @player.name.should == "Geronimo"
    end

    it "has an inital health" do
      @player.health.should_not == nil
    end

    it "has a string representation" do
      @player.to_s.should == "I'm Geronimo with a health of 200 and a 208 score."
    end

    it "computes a score as the sum of its health and length of name" do
      @player.score.should == @player.health + @player.name.length
    end

    it "increases health by 15 when w00ted" do
      w00ted_health = @initial_health + 15
      @player.w00t
      @player.health.should == w00ted_health
    end

    it "decreases health by 10 when blammed" do
      blammed_health = @initial_health - 10
      @player.blam
      @player.health.should == blammed_health
    end

    it "should slice and dice"

  end

  it "computes points as the sum of all treasure points" do
    @player.points.should == 0

    @player.found_treasure(Treasure.new(:hammer, 50))

    @player.points.should == 50

    @player.found_treasure(Treasure.new(:crowbar, 400))
    
    @player.points.should == 450
    
    @player.found_treasure(Treasure.new(:hammer, 50))

    @player.points.should == 500
  end

end
