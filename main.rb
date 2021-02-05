
# First lets require the files

require './player'
require './questionAnswer'
require './comments'

# instantiate two player objects

playerOne = Player.new(1)
playerTwo = Player.new(2)

# instantiate questionAnswer object
question_details = QuestionAnswer.new

# instantiate comments objects
comments = Comments.new

# Lets test out that the players are being instantiated properly
p playerOne
p playerTwo

=begin
gameStart = true
puts comments.game_start()

while gameStart
  

end
=end
