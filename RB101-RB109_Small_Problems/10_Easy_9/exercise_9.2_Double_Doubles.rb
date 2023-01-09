# Small Problems > Easy 9 > Double Doubles

def twice(num)
  num_arr = num.digits.reverse
  first_half = num_arr[0, num_arr.length / 2]
  second_half = num_arr[num_arr.length / 2..-1]
  num_arr.length.even? && first_half == second_half ? num : num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10