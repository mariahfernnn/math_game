# Assisted by Michael Fich(mentor) & Mikias Abera(mentor)
# Assisted by Peter Hang(student)
require './question.rb'
require './player.rb'

class Game
  attr_accessor :players, :turn, :lives, :current_player

  def initialize
    @players = []
    start
  end

  def start
    puts "Welcome!"
    add_players
    
    while players_are_alive do
      ask_question
      switch_player
    end
    puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
    puts "Game over"
  end

  def players_are_alive
    @players.first.lives != 0 && @players.last.lives != 0 
  end

  def winner
    if @current_player.lives == 0
      switch_player
    end
  end

  def add_players
    # add_player1 = gets.chomp
    # add_player2 = gets.chomp
    add_player("Player 1")
    add_player("Player 2")
    @current_player = @players.first
  end 

  # This method will add new players to the game
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
    question.ask(@current_player.name)

    print "> "
      user_answer = $stdin.gets.chomp.to_i
    
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
end  