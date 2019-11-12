require './math_classes'

game1 = Game.new()

# Change to gets.chomps to get input from users
game1.add_player("Maria")
game1.add_player("Michael")

p1 = game1.players[0] 
p2 = game1.players[1]
current_player = game1.switch_player
