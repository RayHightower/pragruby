require_relative './game_turn.rb'
# Is it overkill to have this file when other files are covering the GameTurn module with tests?
#

describe GameTurn do

  it 'should grab a treasure item' do
    treasure = get_treasure
    treasure.should_not == nil
  end

end

