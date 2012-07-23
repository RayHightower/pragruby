require_relative './player'
require_relative './game'

# player1 = Player.new("moe")
# player2 = Player.new("larry", 60)
# player3 = Player.new("curly", 125)
# 
knuckleheads = Game.new("Knuckleheads")
# knuckleheads.add_player(player1)
# knuckleheads.add_player(player2)
# knuckleheads.add_player(player3)

playerfile = ARGV.shift
puts "\nThe program will use the #{playerfile} file.\n"
knuckleheads.load_players(playerfile || 'players.csv')

loop do
  puts "\nSTARTING THE GAME...\nHow many rounds do you want to play?"
  answer = gets.chomp.downcase

  if answer == 'quit' || answer == 'exit'
    break
  elsif answer.to_i > 0
    answer = answer.to_i
    puts "Enjoy your #{answer} rounds!"
    knuckleheads.play(answer)
  else
    puts "Please enter an integer, 'quit', or 'exit'."
  end
end


knuckleheads.show_game_status
knuckleheads.print_stats
knuckleheads.print_high_scores


# player1 = Player.new("simon")
# player2 = Player.new("alvin", 60)
# player3 = Player.new("theodore", 125)
# 
# chipmunks = Game.new("Chipmunks")
# chipmunks.add_player(player1)
# chipmunks.add_player(player2)
# chipmunks.add_player(player3)
# chipmunks.play
# 
# chipmunks.show_game_status
# chipmunks.print_stats
# chipmunks.print_high_scores

