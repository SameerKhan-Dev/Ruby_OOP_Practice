
require './player'
require './questionAnswer'
require './comments'

class GameLogic

  attr_accessor :playerOne, :playerTwo, :question_details, :comments

  def initialize(playerOne, playerTwo, question_details, comments)
    @playerOne = playerOne
    @playerTwo = playerTwo
    @question_details = question_details
    @comments = comments
  end

  def playerLogic(currentPlayer)
    playerLost = false

    puts question_details.question(currentPlayer.id)
    p1_answer = $stdin.gets.to_i
    if (p1_answer != question_details.answer)
      puts comments.wrong_answer()
      puts question_details.answer
      currentPlayer.decrease_score()
    else
      puts comments.correct_answer() 
    end
    puts comments.show_score(playerOne.score, playerTwo.score)

    if currentPlayer.score == 0
      playerLost = true
    end
    return playerLost
  end

end