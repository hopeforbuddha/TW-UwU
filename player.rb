class Player 
  attr_reader :player_name, :player_life

  def initialize(player_name)
    @player_life = 3
    @player_name = player_name
  end


  def subtract_life
    @player_life -= 1
  end


    def player_health
      puts "#{@player_name}: #{@player_life}"
    end

  def check_alive?
    @player_life > 0
  end
end


# player = Player.new()

# player.switch_player
# player.random_num
# player.user_guess
# player.guess_equal
# player.subtract_life
# player.players_health
# player.game_over


