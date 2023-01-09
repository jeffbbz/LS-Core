#Exercise 7.3

def find_fibonacci_index_by_length(digits)
  fib = [1, 1]
  second_num = 1
  next_num = 2

  loop do
    break if digits == fib.last.digits.length
    fib << next_num
    first_num, second_num = second_num, next_num
    next_num = first_num + second_num
  end
  fib.length
end

p find_fibonacci_index_by_length(2) #== 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) #== 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) #== 45
p find_fibonacci_index_by_length(100) #== 476
p find_fibonacci_index_by_length(1000) #== 4782
p find_fibonacci_index_by_length(10000) #== 47847#


