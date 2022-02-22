#Exercise 6.8

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
denominator = nil

loop do
  puts ">> Please enter the numerator:"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts ">> Invalid input. Integers only!"
end

loop do
  puts ">> Please enter a the denominator:"
  denominator = gets.chomp
  if denominator == "0"
    puts ">>Invalid input. Get yer zeros outta here!"
  else
    break if valid_number?(denominator)
    puts ">> Invalid input. Integers only!"
  end
end

div_result = numerator.to_i / denominator.to_i
puts ">> #{numerator} / #{denominator} is #{div_result}"