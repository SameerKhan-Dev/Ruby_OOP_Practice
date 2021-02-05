
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