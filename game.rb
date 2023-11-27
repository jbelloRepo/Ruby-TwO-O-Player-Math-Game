class Game
    attr_accessor :current_player, :status
  
    def initialize(player1, player2)
      @players = [player1, player2]
      @current_player = @players[0]
      @status = "ongoing"
    end
  
    def start
      while @status == "ongoing"
        new_turn
        switch_players
        check_game_status
      end
      end_game
    end
  
    private
  
    def new_turn
      turn = Turn.new(@current_player)
      turn.play
      update_scores
      display_scores
    end
  
    def switch_players
      @current_player = (@current_player == @players[0]) ? @players[1] : @players[0]
    end
  
    def update_scores
        @players.each do |player|
            player.update_score if player.lives > 0
        end
    end
  
    def display_scores
      puts "P1: #{@players[0].score}/3 vs P2: #{@players[1].score}/3"
      puts "----- NEW TURN -----"
    end
  
    def check_game_status
      if @players.any? { |player| player.lives <= 0 }
        @status = "finished"
      end
    end
  
    def end_game
      winner = @players.max_by(&:score)
      puts "#{winner.name} wins with a score of #{winner.score}/3"
      puts "----- GAME OVER -----"
      puts "Goodbye!"
    end
  end
  