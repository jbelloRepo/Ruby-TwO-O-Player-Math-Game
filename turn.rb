class Turn
    attr_reader :current_player
  
    def initialize(current_player)
      @current_player = current_player
      @question = Question.new
    end
  
    def play
      @current_player.display_turn(@question.current_question)  # Pass current_question to display_turn
      answer = gets.chomp.to_i
      if @question.correct?(answer)
        @current_player.display_correct
      else
        @current_player.display_incorrect
        @current_player.lose_life
      end
    end
  end
  