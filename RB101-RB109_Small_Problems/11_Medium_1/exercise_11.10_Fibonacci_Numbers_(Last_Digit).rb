# Small Problems > Medium 1 > Fibonacci Numbers (Last Digit)

# def fibonacci(number)
#   num1, num2 = [1, 1]
#   3.upto(number) do
#     num1, num2 = [num2, num1 + num2]
#   end
#   num2
# end 

# def fibonacci_last(number)
#   fibonacci(number).to_s[-1].to_i
# end

def fibonacci_last(number)
  last_2 = [1, 1]
  3.upto(number) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end
  last_2.last
end


p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4