intro = <<~INTRO
==> Let's look for number matches! We'll take 6 numbers,
==> and we'll see if the 6th one matches any of the others!
INTRO

def valid_integer?(number_string)
  number_string.to_i.to_s == number_string
end

def get_input_numbers(ordinal)
  num = nil
  loop do
    puts "==> Enter the #{ordinal} number:"
    num = gets.chomp
    break if valid_integer?(num)
    puts "That doesn't seem like a number, Try again!"
  end
  num.to_i
end

def output_result(num_array, last_num)
  if num_array.include?(last_num)
    puts "The number #{last_num} appears in #{num_array}."
  else
    puts "The number #{last_num} does not appear in #{num_array}."
  end
end

number_collection = []

puts intro

ordinals = %w(1st 2nd 3rd 4th 5th)
ordinals.each { |ordinal| number_collection << get_input_numbers(ordinal)}
last_num = get_input_numbers("last")

output_result(number_collection, last_num)





