#Exercise 3.2

SQFT_PER_SQM = 10.7639

puts "What length is the room (in meters)?"
length = gets.chomp

puts "What width is the room (in meters)?"
width = gets.chomp

square_m = (length.to_f * width.to_f).round(2)
square_ft = (square_m * SQFT_PER_SQM).round(2)

puts "The area of the room is #{square_m} sq meters (#{square_ft} sq feet)."

#Further Exploration

SQCM_PER_SQFT = 929.0304
SQIN_PER_SQFT = 144

puts "What length is the room (in feet)?"
length = gets.chomp

puts "What width is the room (in feet)?"
width = gets.chomp

square_ft = (length.to_f * width.to_f).round(2)
square_in = square_ft * SQIN_PER_SQFT
square_cm = (square_ft * SQCM_PER_SQFT).round(2)

puts "The area of the room is #{square_ft} sq ft. (#{square_in} sq in.)(#{square_cm} sq cm.)."