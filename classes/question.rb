class Question
  attr_reader :text

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
    @text = "What does #{@num1} plus #{@num2} equal?"
  end

  def correct?(input)
    input.to_i == @answer
  end
end
