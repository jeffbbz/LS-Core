#-----LS Example-----#

def prompt(message)
  Kernel.puts("=> #{message}")
end

prompt("Welcome to Calculator!")

prompt("What's the first number?")
number_1 = Kernel.gets().chomp()

prompt("What's the first number?")
number_2 = Kernel.gets().chomp()

prompt("What operation would you like to peform? 1) add 2) subtract 3) multiply 4) divide") 
operator = Kernel.gets().chomp()

result =  case operator
          when '1'
            number_1.to_i() + number_2.to_i()
          when '2'
            number_1.to_i() - number_2.to_i()
          when '3'
            number_1.to_i() * number_2.to_i()
          when '4'
            number_1.to_f() / number_2.to_f()
end

prompt("The result is #{result}")

#-----My Example-----#

# puts "It's calc time!"
# loop do
#   puts ">> Please put a number:"
#   number_1 = gets.chomp
  
#   puts ">> Please put another number:"
#   number_2 = gets.chomp
  
#   puts ">> what type of operation? (add / subtract / multiply / divide)"
#   operation = gets.chomp.downcase
  
#   case
#   when operation == "add"
#     sum = number_1.to_i + number_2.to_i
#     puts "#{number_1} + #{number_2} = #{sum}!"
#     puts "Do another one? (y/n)"
#     another = gets.chomp
#     break if another == "n"
#   when operation == "subtract"
#     sum = number_1.to_i - number_2.to_i
#     puts "#{number_1} - #{number_2} = #{sum}!"
#     puts "Do another one? (y/n)"
#     another = gets.chomp
#     break if another == "n"
#   when operation == "multiply"
#     sum = number_1.to_i * number_2.to_i
#     puts "#{number_1} * #{number_2} = #{sum}!"
#     puts "Do another one? (y/n)"
#     another = gets.chomp
#     break if another == "n"
#   when operation == "divide"
#     sum = number_1.to_f / number_2.to_f
#     puts "#{number_1} / #{number_2} = #{sum}!"
#     puts "Do another one? (y/n)"
#     another = gets.chomp
#     break if another == "n"
#   else
#     puts "That's not a valid operation! Try again!"
#   end
# end

# puts "Thank you, Bye!"

