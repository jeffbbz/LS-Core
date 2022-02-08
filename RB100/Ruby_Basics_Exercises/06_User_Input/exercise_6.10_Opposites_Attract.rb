#Exercise 6.10

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

integer_1 = nil
integer_2 = nil

loop do
  puts ">> Let's add some integers! Please enter a postive or negative integer:"
  integer_1 = gets.chomp
  puts ">> Please enter another postive or negative integer:"
  integer_2 = gets.chomp
  if integer_1.to_i * integer_2.to_i > 0
    puts ">> Invalid input. One number must be negative, one must be positive."
  else
    break if valid_number?(integer_1) && valid_number?(integer_2)
    puts ">> Invalid input. Only use non-zero integers."
  end
end

add_result = integer_1.to_i + integer_2.to_i
puts ">> #{integer_1} + #{integer_2} is #{add_result}"