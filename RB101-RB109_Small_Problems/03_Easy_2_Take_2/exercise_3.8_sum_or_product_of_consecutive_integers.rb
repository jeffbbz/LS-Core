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

# Take 2

def array_product(array)
  index = 0
  product = 1

  loop do
    if array.length.odd? && (array.length <= index + 2)
      product *= array[index]
    else
      product *= array[index] * array[index + 1]
    end
    index += 2
    break if index >= array.length
  end
  product
end

puts "Let's determine the sum or product of all numbers between 1 and any number!"
puts ">> Please enter an integer greater than 0:"
num = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp.downcase

range = (1..num).to_a

case choice
when 's'
  sum = range.sum
  puts "The sum of the integers between 1 and #{num} is #{sum}."
when 'p'
  product = array_product(range)
  puts "The product of the integers between 1 and #{num} is #{product}."
else
  puts "Please choose 's' or 'p' only!"
end

# better

def array_product(array)
  product = 1
  array.each { |num| product *= num }
  product
end

def valid_integer?(integer)
  integer.to_i > 0 && integer.to_i.to_s == integer
end

def valid_choice?(string)
  string == 's' || string == 'p'
end

loop do
  puts ">> Let's determine the sum or product of all numbers between 1 and any number!"

  num = nil
  loop do
    puts ">> Please enter an integer greater than 0:"
    num = gets.chomp
    break if valid_integer?(num)
    puts ">> That didn't work! Try again!"
  end

  choice = nil
  loop do
    puts ">> Enter 's' to compute the sum, 'p' to compute the product."
    choice = gets.chomp.downcase
    break if valid_choice?(choice)
    puts ">> Please choose 's' or 'p' only!"
  end

  range = (1..num.to_i).to_a

  case choice
  when 's'
    sum = range.sum
    puts ">> The sum of the integers between 1 and #{num} is #{sum}."
  when 'p'
    product = array_product(range)
    puts ">> The product of the integers between 1 and #{num} is #{product}."
  end

  puts ">> Do you want to compute again? ('y' for yes or any key to quit)"
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

puts ">> Thanks for hanging out! Bye!"


# Further Exploration

# Enumerable#inject

def array_product(num_string)
  num = num_string.to_i
  (1..num).inject(:*)
end

def array_sum(num_string)
  num = num_string.to_i
  (1..num).inject(:+)
end

def valid_integer?(num_string)
  num_string.to_i > 0 && num_string.to_i.to_s == num_string
end

def valid_choice?(string)
  %w(s p).include?(string)
end

loop do
  puts ">> Let's determine the sum or product of all numbers between 1 and any number!"

  num = nil
  loop do
    puts ">> Please enter an integer greater than 0:"
    num = gets.chomp
    break if valid_integer?(num)
    puts ">> That didn't work! Try again!"
  end

  choice = nil
  loop do
    puts ">> Enter 's' to compute the sum, 'p' to compute the product."
    choice = gets.chomp.downcase
    break if valid_choice?(choice)
    puts ">> Please choose 's' or 'p' only!"
  end

  case choice
  when 's'
    sum = array_sum(num)
    puts ">> The sum of the integers between 1 and #{num} is #{sum}."
  when 'p'
    product = array_product(num)
    puts ">> The product of the integers between 1 and #{num} is #{product}."
  end

  puts ">> Do you want to compute again? ('y' for yes or any key to quit)"
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

puts ">> Thanks for hanging out! Bye!"