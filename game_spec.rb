# instead of Die and roll, use Spinner and spin
#
require_relative './game'

describe Game do
  context "high number from the spinner" do

    before do
      @game = Game.new("streetracer")

      @initial_health = 100
      @player = Player.new("moe", @initial_health)

      @game.add_player(@player)
    end

    it "w00ts the player when the number is high" do
      @spinner = Spinner.any_instance.stub(:spin).and_return(5)
      @game.play
      @player.health.should == @initial_health + 15
    end

    it "does nothing when the number is medium" do
      @spinner = Spinner.any_instance.stub(:spin).and_return(2)
      @game.play
      @player.health.should == @initial_health
    end

    it "blams the player when the number is low" do
      @spinner = Spinner.any_instance.stub(:spin).and_return(2)
      @game.play
      @player.health.should == @initial_health
    end
  end
end
