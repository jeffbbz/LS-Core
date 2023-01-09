# Small Problems > Medium 1 > Fibonacci Numbers (Procedural)

# brute force

def fibonacci(number)
  return 1 if number <= 2
  num1, num2 = 1, 1
  fib_arr = [num1, num2]
  loop do
    break if fib_arr.size == number
    next_num = num1 + num2
    fib_arr << next_num
    num1 = num2
    num2 = next_num
  end
  fib_arr.pop
end

# upto and with_object

def fibonacci(number)
  0.upto(number - 3).with_object([1, 1]) do |index, arr|
    next_num = arr[index] + arr[index + 1]
    arr << next_num
  end.pop
end

# times and with_object

def fibonacci(number)
  (number - 2).times.with_object([1, 1]) do |index, arr|
    arr << arr[index] + arr[index + 1]
  end.pop
end

# LS solution with upto and multiple re-assignment

def fibonacci(number)
  num1, num2 = [1, 1]
  3.upto(number) do
    num1, num2 = [num2, num1 + num2]
  end
  num2
end

p fibonacci(1) #== 1
p fibonacci(2) #== 1
p fibonacci(3) #== 2
p fibonacci(4) #== 3
p fibonacci(5) #== 5
p fibonacci(12) #== 144
p fibonacci(20) #== 6765
p fibonacci(100) #== 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501