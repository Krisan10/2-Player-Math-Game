class Game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_turn = Turn.new(@player1, @player2)
  end

  def start
    while !game_over? do
      current_player = @current_turn.current_player
      question = Question.new

      IOHandler.display_question(current_player, question)
      answer = IOHandler.get_answer

      if question.correct?(answer)
        IOHandler.display_correct
      else
        current_player.lose_life
        IOHandler.display_incorrect(current_player)
      end

      @current_turn.next_turn
    end

    IOHandler.display_winner(winner)
  end

  private

  def game_over?
    @player1.lives == 0 || @player2.lives == 0
  end

  def winner
    @player1.lives > 0 ? @player1 : @player2
  end
end
