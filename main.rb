# frozen_string_literal: true

require './creator'
require './guesser'

CODE_LENGTH = 4
NUMBER_GUESSES = 12

creator = Creator.new(CODE_LENGTH)
creator.create_code('1234')     # replace later with gets

guesser = Guesser.new(NUMBER_GUESSES)

while guesser.guesses.positive?
  puts "Remaining guesses: #{guesser.guesses} / #{NUMBER_GUESSES}"
  puts 'Next guess: ...'
  guess = guesser.make_guess[..CODE_LENGTH]
  correct_positions = creator.feedback(guess)
  puts "Correct: #{correct_positions}"
  puts '=========='
end

if correct_positions == CODE_LENGTH
  puts 'Guesser wins!'
else
  puts 'Creator wins!'
end
puts '=========='
