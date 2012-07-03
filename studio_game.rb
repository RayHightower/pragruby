require_relative './player'
require_relative './game'

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play

knuckleheads.show_game_status

player1 = Player.new("simon")
player2 = Player.new("alvin", 60)
player3 = Player.new("theodore", 125)

chipmunks = Game.new("Chipmunks")
chipmunks.add_player(player1)
chipmunks.add_player(player2)
chipmunks.add_player(player3)
chipmunks.play

chipmunks.show_game_status
