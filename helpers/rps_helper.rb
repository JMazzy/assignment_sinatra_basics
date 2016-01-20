module RPSHelper

  move_hash = { rock: :scissors, paper: :rock, scissors: :paper }

  def check_move(move)
    computer_move = get_computer_move
    move_key = move.to_sym
    if move_key == computer_move
      :draw
    elsif move_hash[move_key] == computer_move
      :win
    else
      :lose
    end
  end

  def get_computer_move
    move_hash.keys.sample
  end

end
