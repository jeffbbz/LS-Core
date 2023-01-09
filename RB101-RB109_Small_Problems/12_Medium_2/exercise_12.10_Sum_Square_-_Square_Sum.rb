# Small Problems > Medium 2 > Sum Square - Square Sum

def sum_square_difference(number)
  numbers = (1..number).to_a
  sum_square = numbers.sum ** 2
  square_sum = numbers.map { |num| num ** 2 }.sum
  sum_square - square_sum
end

# dumb one-liner refactor for fun

def sum_square_difference(number)
  ((1..number).sum ** 2) - (1..number).map { |num| num ** 2 }.sum
end

# without a range or array

def sum_square_difference(number)
  sum = 0
  sum_square, square_sum = 0, 0
  1.upto(number) do |num|
    sum_square = (sum += num) ** 2
    square_sum += (num ** 2)
  end
  sum_square - square_sum
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150