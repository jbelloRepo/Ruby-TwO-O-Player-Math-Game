class Player
    attr_reader :name, :score, :lives
  
    def initialize(name)
      @name = name
      @score = 0
      @lives = 3
    end
  
    def update_score
      @score += 1
    end
  
    def lose_life
      @lives -= 1
    end
  
    def display_turn(current_question)
        puts "#{@name}: What does #{current_question} equal?"
        print "> "
    end
  
    def display_correct
      puts "#{@name}: YES! You are correct."
    end
  
    def display_incorrect
      puts "#{@name}: Seriously? No!"
    end
  end
  