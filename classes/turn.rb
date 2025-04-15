require_relative 'question'

class Turn
  def initialize(player)
    @player = player
    @question = Question.new
  end

  def execute
    puts "#{@player.name}: #{@question.text}"
    print "> "
    input = gets.chomp

    if @question.correct?(input)
      puts "#{@player.name}: YES! You are correct."
    else
      puts "#{@player.name}: Seriously? No!"
      @player.lose_life
    end
  end
end