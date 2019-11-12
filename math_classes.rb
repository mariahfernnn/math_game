class Game
  attr_accessor :random_number_1, :random_number_2
  
  def number(random_number_1, random_number_2)
    random_number_1 = rand(1..20)
    random_number_2 = rand(1..20)
    correct_answer = random_number_1 + random_number_2
  end
end 

class Player
  attr_accessor :name
  attr_reader :lives

  def initialize(name, lives)
    @name = name
    @lives = 3
  end

  def life
    self.lives = self.lives - 1
  end
end 

class Turn
  def initialize
    self.currentplayer = (self.currentplayer + 1) % 2
  end
end