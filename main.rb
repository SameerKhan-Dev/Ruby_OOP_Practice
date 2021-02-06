
# First lets require the files

require './player'
require './questionAnswer'
require './comments'
require './gameLogic'

# instantiate two player objects

playerOne = Player.new(1)
playerTwo = Player.new(2)

# instantiate questionAnswer object
question_details = QuestionAnswer.new

# instantiate comments objects
comments = Comments.new

gameLogic = GameLogic.new(playerOne, playerTwo, question_details, comments)

gameStart = true
puts comments.game_start()

gameEnd = false

while gameStart
    gameEnd = gameLogic.playerLogic(playerOne)
    if(gameEnd)
      comments.end_game_comments(2, playerTwo)
      gameStart = false
    else
      puts comments.new_turn()
      gameEnd = gameLogic.playerLogic(playerTwo)
      if(gameEnd)
        comments.end_game_comments(1, playerOne)
        gameStart = false
      else
        puts comments.new_turn()
      end
    end
end
