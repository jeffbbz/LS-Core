# Small Problems > Easy 8 > Sum of Sums

# loop with pop and sum

def sum_of_sums(array)
  total_sum = array.sum
  loop do
    array.pop
    total_sum += array.sum
    break if array.empty?
  end
  total_sum
end

# or LS answer with each + two counters

def sum_of_sums(array)
  total = 0
  accumulator = 0

  array.each do |num|
    accumulator += num
    total += accumulator
  end
  total
end 

# or LS answer with upto slice inject

def sum_of_sums(array)
  total = 0
  1.upto(array.length) do |count|
    total += array.slice(0, count).inject(:+)
  end
  total
end

# or times sum pop

def sum_of_sums(array)
  total = 0
  array.length.times do
    total += array.sum
    array.pop
  end
  total
end

# or reverse times sum drop

def sum_of_sums(array)
  total = 0
  array = array.reverse
  array.length.times do
    total += array.sum
    array = array.drop(1)
  end
  total
end

p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) #== (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) #== 4
p sum_of_sums([1, 2, 3, 4, 5]) #== 35