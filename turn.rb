class Turn
  def initialize(player1, player2)
    @players = [player1, player2]
    @current_index = 0
  end

  def current_player
    @players[@current_index]
  end

  def next_turn
    @current_index = (@current_index + 1) % 2
  end
end
