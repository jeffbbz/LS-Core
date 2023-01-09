# Small Problems > Easy 9 > Sequence Count

def sequence(count, start)
  element = 0
  count.times.with_object([]) { |_, arr| arr << element += start }
end

def sequence(count, start)
  count.times.with_object([]) { |i, arr| arr << (i + 1) * start }
end

def sequence(count, start)
  (1..count).map { |num| num * start }
end

p sequence(5, 1) #== [1, 2, 3, 4, 5]
p sequence(4, -7) #== [-7, -14, -21, -28]
p sequence(3, 0) #== [0, 0, 0]
p sequence(0, 1000000) #== []