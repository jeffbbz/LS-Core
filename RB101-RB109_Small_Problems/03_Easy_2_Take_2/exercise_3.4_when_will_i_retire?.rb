#Exercise 3.4

puts "How old are you?"
current_age = gets.chomp.to_i

puts "What age do you want to retire at?"
retire_age = gets.chomp.to_i

current_year = Time.now.year
years_til_retire = retire_age - current_age
retire_year = current_year + years_til_retire

puts "Well, it's #{current_year}, so you will retire in #{retire_year}."
puts "That's just #{years_til_retire} years away!"

# Take 2

puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

current_year = Time.now.year

year_of_retirement = current_year + retirement_age
years_of_work_remaining = retirement_age - age

puts "It's #{current_year}. You will retire in #{year_of_retirement}."
puts "You only have #{years_of_work_remaining} years of work to go!"