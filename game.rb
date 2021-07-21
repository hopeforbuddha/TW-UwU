
class Game

  attr_accessor :current_player, :game_over

  def initialize
    @game_over = false
    @players = []
    @players[0] = Player.new("p1")
    @players[1] = Player.new("p2")
    @turn = 0
  end

  def start_game
    while !@game_over do
      current_player = @players[@turn % 2]
      other_player = @players[(@turn + 1) % 2]

      new_question = Question.new(current_player.player_name)
      new_question.get_question
      answer = gets.chomp.to_i

      if new_question.check_answer(answer)
        puts "Correct Answer!"
      else
        puts "Incorrect, Boo!"
        current_player.subtract_life
        if current_player.player_life == 0
          puts "--- GAME OVER ---"
          puts "#{other_player.player_name} wins with a score of #{other_player.player_life}/3"
          @game_over = true
          break
        end
      end

      puts "P1: #{@players[0].player_life}/3 #{@players[1].player_life}/3"
      
      @turn = @turn + 1
      puts "--- NEW TURN ---"

    end
    
  end

end

