require 'date'

puts "What year do you want to check ?"
year = gets.chomp.to_i
puts "What month do you want to check ?"
month = gets.chomp.to_i
puts "What day do you want to check ?"
day = gets.chomp.to_i

user_given_date = Date.new(year,month,day)

def days_to_christmas(date = Date.today)
  # use the Date
  day_to_check = date
  current_year = day_to_check.year
  xmas_date = Date.new(current_year,12,25)
  # get today's date
  # substract
  # if day_to_check > xmas_date
  #   next_xmas_date = Date.new(current_year + 1, 12,25)
  #   (next_xmas_date - day_to_check).to_i
  # else
  #   (xmas_date - day_to_check).to_i
  # end

  # if day_to_check > xmas_date
  #   xmas_date = Date.new(current_year + 1, 12,25)
  # end

  xmas_date = Date.new(current_year + 1, 12,25) if day_to_check > xmas_date

  (xmas_date - day_to_check).to_i
end


puts "User given date"
puts days_to_christmas(user_given_date)


tomorrow = Date.today + 1
puts "Tomorrow"
puts days_to_christmas(tomorrow)

puts "Day after christmas"
day_after_xmas = Date.new(2024,12,26)
puts days_to_christmas(day_after_xmas)

puts "Super future date"

day_way_after = Date.new(2025,12,26)
puts days_to_christmas(day_way_after)



# TDD - TEST DRIVEN DEVELOPMENT
# rake - running a task -> rspec/minitest tests written by LW

# RED - GREEN - REFACTOR
# RED - failing test
# GREEN - write some code to make the test pass
# REFACTOR - improve the functioning code

# We need to check that the answer is a number
# We can check that the input is day of Today - 161

answer = days_to_christmas
puts answer
# .kind_of?(OBJECT)
puts "Answer is a number" if answer.integer?
puts "Days to Xmas is correct" if answer == 162
