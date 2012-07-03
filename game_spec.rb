# instead of Die and roll, use Spinner and spin
#
require_relative './game'

describe Game do
  before do
    @game = Game.new("streetracer")

    @initiall_health = 100
    @player = Player.new("moe", @initial_health)

    @game.add_player(@player)
  end

  it "knows how to initialize itself"

end
