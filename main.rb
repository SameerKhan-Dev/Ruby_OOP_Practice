
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
=begin
class Comments

  def  game_start
    "Welcome to the Number Game Competition!"
  end

  def player_win(id, score)<
    "Player #{id} wins with a score of #{id}/3"
  end

  def correct_answer
    "YES! You are correct."
  end

  def wrong_answer
    "Seriously? No!"
  end

  def new_turn
    "----- NEW TURN -----"
  end

  def game_over
    "----- GAME OVER -----"
  end

  def good_bye
    "Good bye!"
  end

  def show_score(p1, p2)
    "P1: #{p1}/3 vs P2: #{p2/3}"
  end

end
=end