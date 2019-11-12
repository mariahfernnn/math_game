require './math_classes'

def game_1
puts "What does #{random_number_1} plus #{random_number_2} equal?"

  print "> "
  user_answer = $stdin.gets.chomp

  if correct_answer == user_answer
    puts "YES! You are correct."
  else correct_answer !=  user_answer
    puts "Seriously? No!"
  end
end

game1 = Game.new()
puts game1.random_number_1
puts game1.random_number_2

player1 = Player.new('Maria', 3)
puts player1.name
puts player1.lives



