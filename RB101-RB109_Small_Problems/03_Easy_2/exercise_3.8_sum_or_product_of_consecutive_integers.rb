# #Exercise 3.8

# def sum_calc(integer)
#   sum = 0
#   1.upto(integer) { |num| sum += num }
#   sum
# end

# def product_calc(integer)
#   product = 1
#   1.upto(integer) { |num| product *= num }
#   product
# end

# def integer?(input)
#   input.to_i.to_s == input && input.start_with?("0") != true
# end

# def s_or_p?(input)
#   input == 's' || input == 'p'
# end

# integer_answer = ''

# loop do
#   puts "Enter an integer great than 0:"
#   integer_answer = gets.chomp
  
#   if integer?(integer_answer)
#     integer_answer = integer_answer.to_i
#     break
#   else
#     puts "Please choose integers only"
#   end
# end

# loop do
#   puts <<-Question
# Enter 's' to compute the sum of all integers between 1 and your choice.
# or
# Enter 'p' to compute the product of the same.
#   Question
#   calc_answer = gets.chomp

#   if calc_answer == 's'
#     sum = sum_calc(integer_answer)
#     puts "The sum of integers between 1 and #{integer_answer} is #{sum}"
#     break
#   elsif calc_answer == 'p'
#     product = product_calc(integer_answer)
#     puts "The product of integers between 1 and #{integer_answer} is #{product}"
#     break
#   else
#     puts "Please choose s or p only"
#   end
# end

# further exploration

def integer?(input)
  input.to_i.to_s == input && input.start_with?("0") != true
end

def s_or_p?(input)
  input == 's' || input == 'p'
end

integer_answer = ''

loop do
  puts "Enter an integer great than 0:"
  integer_answer = gets.chomp
  
  if integer?(integer_answer)
    integer_answer = integer_answer.to_i
    break
  else
    puts "Please choose integers only"
  end
end

loop do
  puts <<-Question
Enter 's' to compute the sum of all integers between 1 and your choice.
or
Enter 'p' to compute the product of the same.
  Question
  calc_answer = gets.chomp

  if s_or_p?(calc_answer)
    if calc_answer == 's'
      sum = 1.upto(integer_answer).inject(:+)
      puts "The sum of integers between 1 and #{integer_answer} is #{sum}"
      break
    elsif calc_answer == 'p'
      product = 1.upto(integer_answer).inject(:*)
      puts "The product of integers between 1 and #{integer_answer} is #{product}"
      break
    end
  else
    puts "Please choose s or p only"
  end
end