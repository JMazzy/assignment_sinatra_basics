module RPSHelper

  MOVEHASH = { rock: :scissors, paper: :rock, scissors: :paper }

  def check_move(move)
    computer_move = get_computer_move
    move_key = move.to_sym
    if move_key == computer_move
      result = :draw
    elsif MOVEHASH[move_key] == computer_move
      result = :win
    else
      result = :lose
    end
    return [result, computer_move]
  end

  def get_computer_move
    MOVEHASH.keys.sample
  end

end
