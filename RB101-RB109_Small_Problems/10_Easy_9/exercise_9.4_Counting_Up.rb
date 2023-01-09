# Small Problems > Easy 9 > Counting Up

def sequence(num)
  (1..num).to_a
end

# or 

def sequence(num)
  Range.new(1, num).to_a
end

p sequence(5) #== [1, 2, 3, 4, 5]
p sequence(3) #== [1, 2, 3]
p sequence(1) #== [1]

# Further Exploration

def sequence(num)
  return [num] if num == 0
  num > 0 ? (1..num).to_a : (num..-1).to_a.reverse
end

p sequence(5) #== [1, 2, 3, 4, 5]
p sequence(3) #== [1, 2, 3]
p sequence(1) #== [1]
p sequence(0) #== [0]
p sequence(-5) #== [-1, -2, -3, -4, -5]
p sequence(-1) #== [-1]