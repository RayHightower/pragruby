require_relative './player'

describe Player do

  before do
    @player = Player.new("geronimo", 200)
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
  end

  it "increases health by 15 when w00ted" do
  end

  it "decreases health by 10 when blammed" do
  end

end
