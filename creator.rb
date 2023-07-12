# frozen_string_literal: true

# The one who has to create the code
class Creator
  attr_reader :code

  def initialize(code_length, is_computer)
    @code_length = code_length
    @code = ''
    @is_computer = is_computer
  end

  def create_code
    if @is_computer
      @code = generate_random_code
    else
      puts "Create a code with #{@code_length} numbers"
      @code = gets.gsub("\n", '')[..4]
      until @code.length == @code_length
        @code = gets.gsub("\n", '')[..4]
      end
    end
  end

  def generate_random_code
    (0..@code_length - 1).map { rand(9).to_s }
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
