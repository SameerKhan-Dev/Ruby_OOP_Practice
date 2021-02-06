
class Player
  attr_accessor :id , :score
  def initialize(id)
    @id = id
    @score = 3
  end
  def decrease_score
    currentScore = score
    self.score= currentScore -1
  end
end


