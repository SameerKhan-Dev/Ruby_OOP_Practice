class QuestionAnswer
  attr_accessor :answer

  def initialize
    @answer = 0
  end

  def random_number
    rand(1..20)
  end

  def question(player_id)
    num1 = random_number()
    num2 = random_number()
    self.answer= (num1 + num2)

    "Player #{player_id}: What is #{num1} + #{num2} equal to?" 
  end

end