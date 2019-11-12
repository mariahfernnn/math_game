class Question
  attr_accessor :total
  attr_reader :random_number_1, :random_number_2

  def initialize
    @random_number_1 = rand(1..20)
    @random_number_2 = rand(1..20)
  end

  def sum
    @total = self.random_number_1 + self.random_number_2
  end

  def ask(name)
    puts "#{name}, What does #{random_number_1} plus #{random_number_2} equal?"
  end
end