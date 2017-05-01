class Game

  def initialize(shape1, shape2)
    @shape1 = shape1
    @shape2 = shape2
  end

  def play()
    if @shape1 == "rock" && @shape2 == "scissors" || @shape1 == "scissors" && @shape2 == "rock"
      return "Rock wins!"
    elsif @shape1 == "rock" && @shape2 == "paper" || @shape1 == "paper" && @shape2 == "rock" 
      return "Paper wins!"
    elsif @shape1 == "paper" && @shape2 == "scissors" || @shape1 == "scissors" && @shape2 == "paper"
      return "Scissors wins!"
    else 
      return "Try again!"
    end
  end

end