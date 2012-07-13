require_relative './game_turn.rb'

# Is it overkill to have this file when other files are covering the GameTurn module with tests?
#

describe GameTurn do

  before do
    @player = Player.new("Kirk",100)
  end

  it 'should take a turn' do
    GameTurn::take_turn(@player).should_not == nil
  end

  it 'should grab a treasure item' do
    treasure = GameTurn::get_treasure
    treasure.should_not == nil
  end

end

