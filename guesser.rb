# frozen_string_literal: true

# The one who has to guess the creaters code
class Guesser
  attr_reader :guesses

  def initialize(number_guesses = 12, is_computer: false)
    @guesses = number_guesses
    @is_computer = is_computer
  end

  def make_guess
    guess = gets unless @is_computer
    @guesses -= 1
    guess
  end
end
