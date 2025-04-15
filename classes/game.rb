require_relative 'turn'

class Game
  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player_index = 0
  end

  def start
    puts "----- GAME START -----"

    while @players.all?(&:alive?)
      puts "----- NEW TURN -----"
      current_player = @players[@current_player_index]
      Turn.new(current_player).execute
      display_scores
      switch_players
    end

    announce_winner
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

  private

  def display_scores
    puts "#{@players[0].score_display} vs #{@players[1].score_display}"
  end

  def switch_players
    @current_player_index = (@current_player_index + 1) % 2
  end

  def announce_winner
    winner = @players.find(&:alive?)
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
  end
end
