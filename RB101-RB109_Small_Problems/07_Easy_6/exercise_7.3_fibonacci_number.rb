#Exercise 7.3

def find_fibonacci_index_by_length(digits)
  current_number = 1
  next_number = 1
  fib_seq = []
  index = 2

  loop do
    fib_seq << current_number
    index += 1
    break if current_number.digits.length >= digits
    current_number, next_number = next_number, current_number + next_number
  end
  fib_seq.length
end

p find_fibonacci_index_by_length(2) #== 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) #== 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) #== 45
p find_fibonacci_index_by_length(100) #== 476
p find_fibonacci_index_by_length(1000) #== 4782
p find_fibonacci_index_by_length(10000) #== 47847#


