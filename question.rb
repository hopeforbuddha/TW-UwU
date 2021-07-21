class Question

  def initialize (player)
    @player = player
    @number1 = rand(20)
    @number2 = rand(20)
    @answer = @number1.to_i + @number2.to_i
  end

  def get_question
  puts "#{@player} what does #{@number1} plus #{@number2} equal?"
  end


  def check_answer(answer)
    answer == @answer
  end

end

# answer = Question.new()
