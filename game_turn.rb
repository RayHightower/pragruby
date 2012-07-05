require_relative './spinner'
require_relative './player'

module GameTurn

  def self.take_turn(player)
    number_spun = Spinner.new.spin
    if number_spun >= 5
      player.w00t
    elsif number_spun <= 2
      player.blam
    else
      puts "\n*** #{player.name} was skipped."
    end
    treasure = TreasureTrove::TREASURES.sample
    puts "#{player.name} found a #{treasure.name} worth #{treasure.points} points."
  end

  def get_treasure
    @treasure = TreasureTrove::TREASURES.sample
  end
end
