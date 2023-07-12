# frozen_string_literal: true

# The one who has to guess the creaters code
class Guesser
  attr_reader :guesses

  def initialize(code_length, number_guesses, is_computer)
    @guesses = number_guesses
    @is_computer = is_computer
    @code_length = code_length
  end

  def make_guess
    if !@is_computer
      guess = gets unless @is_computer
    else
      guess = generate_random_code.join
      puts guess
    end
    @guesses -= 1
    guess
  end
end

def generate_random_code
  (0..@code_length - 1).map { rand(9).to_s }
end
