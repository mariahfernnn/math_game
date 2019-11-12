require './math_classes'

game1 = Game.new()

# Change to gets.chomps to get input from users
game1.add_player("Maria")
game1.add_player("Michael")

p1 = game1.players[0] 
p2 = game1.players[1]
current_player = game1.switch_player
# p1.lives = 3
# p2.lives = 3
# game1.player_1 = game1.players
# game1.player_2 = game1.players.reverse()
# wrong_answer = false

# while p1.lives != 0 && p2.lives != 0 do
#   question = Question.new()
#   question.ask_question

#   print "> "
#     user_answer = $stdin.gets.chomp
  
#   if user_answer != question.sum
#     p1.lives -= 1 || p2.lives -= 1
#     puts "Seriously? No!"
#     puts "P1: #{p1.lives} vs P2: #{p2.lives}"
#     puts "-----NEW TURN-----"
#     current_player
#   else
#     puts "YES! You are correct."
#     puts "P1: #{p1.lives} vs P2: #{p2.lives}"
#     puts "-----NEW TURN-----"
#     current_player
#   end
# end
