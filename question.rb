class Question
    attr_reader :current_question
  
    def initialize
      @num1 = rand(1..20)
      @num2 = rand(1..20)
      @current_question = "#{@num1} plus #{@num2}"
    end
  
    def correct?(answer)
      answer == @num1 + @num2
    end
  end
  