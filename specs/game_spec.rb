require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test


  def test_rock_scissors()
    game = Game.new("rock", "scissors")
    assert_equal("Rock wins!", game.play())
  end

  def test_rock_paper()
    game = Game.new("rock", "paper")
    assert_equal("Paper wins!", game.play())
  end

  def test_paper_scissors()
    game = Game.new("paper", "scissors")
    assert_equal("Scissors wins!", game.play())
  end

  def test_both_the_same()
    game = Game.new("paper", "paper")
    assert_equal("Try again!", game.play)
  end
 
end
