class Player
  attr_accessor :name, :lives

  def initialize(name, lives)
    @name = name
    @lives = 3
  end

  def life
    self.lives = self.lives - 1
  end

  def pretty_print
    "#{self.name}"
  end
end 