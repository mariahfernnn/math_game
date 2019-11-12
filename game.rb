# Assisted by Michael Fich(mentor) & Mikias Abera(mentor)
require './question.rb'
require './player.rb'

class Game
  attr_accessor :players, :turn, :lives, :current_player

  def initialize
    @players = []
  end

  def start
    add_players
    
    while players_are_alive do
      ask_question
      switch_player
    end
    puts "Game over"
  end

  def players_are_alive
    @players.first.lives != 0 && @players.last.lives != 0 
  end

  def add_players
    add_player_1 = $stdin.gets.chomp
    add_player_2 = $stdin.gets.chomp
    @current_player = @players.first
  end 

  def add_player(player_name)
    player = Player.new(player_name, 3)
    @players.push(player)
  end

  # This method should switch the players at every turn
  def switch_player
    @current_player = @current_player == @players.first ? @players.last : @players.first
  end

  def ask_question
    question = Question.new
    question.ask

    print "> "
      user_answer = $stdin.gets.chomp
    
    if user_answer != question.sum
      @current_player.lives -= 1
      puts "Seriously? No!"
      puts "P1: #{@players.first.lives} vs P2: #{@players.last.lives}"
      puts "-----NEW TURN-----"
    else
      puts "YES! You are correct."
      puts "P1: #{@players.first.lives} vs P2: #{@players.last.lives}"
      puts "-----NEW TURN-----"
    end
  end

  # Method does not work
  # def wrong_answer(lives)
  #   # @lives = 3
  #   if sum != user_answer
  #     @lives -= 1
  #   end
  # end
end  

# class Turn
#   def initialize
#     self.currentplayer = (self.currentplayer + 1) % 2
#   end
# end