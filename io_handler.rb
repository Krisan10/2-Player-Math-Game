class IOHandler
  def self.display_question(player, question)
    puts "#{player.name}, what is #{question.num1} + #{question.num2}?"
  end

  def self.get_answer
    print "Your answer: "
    gets.chomp.to_i
  end

  def self.display_correct
    puts "Correct!"
  end

  def self.display_incorrect(player)
    puts "Incorrect! #{player.name} loses a life. #{player.name} has #{player.lives} lives remaining."
  end

  def self.display_winner(player)
    puts "#{player.name} wins with #{player.lives} lives remaining!"
  end
end
