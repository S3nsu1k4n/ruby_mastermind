# frozen_string_literal: true

# The one who has to create the code
class Creator
  def initialize(code_length, is_computer: false)
    @code_length = code_length
    @code = ''
    @is_computer = is_computer
  end

  def create_code(code = '1234')
    @code = code.split('')
  end

  def feedback(guessed_code)
    # check created code with guessed code
    # return number of correct position and code number
    guessed_code.split('').zip(@code).reduce(0) do |sum, (guessed, actual)|
      sum += 1 if guessed == actual
      sum
    end
  end
end
