options = (0..10).to_a
random_price = options.sample

# Ask the user for their guess
# If the guess is correct -> say they won
# If not - let them guess again
answer = ""

# Check whether the user guess is withing the limit
while answer != random_price
  puts "What is your guess? (From 0 to 10)"
  answer = gets.chomp.to_i
  # puts "You need to guess a number from 0 to 10" if !options.include?(answer)
  puts "You need to guess a number from 0 to 10" unless options.include?(answer)
end

puts "You won"
