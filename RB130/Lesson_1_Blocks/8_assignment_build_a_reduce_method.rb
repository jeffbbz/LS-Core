def reduce(array, accum=(no_default_passed = true; array[0]))
  counter = no_default_passed ? 1 : 0
  while counter < array.size
    accum = yield(accum, array[counter])
    counter += 1
  end
  accum
end

array = [1, 2, 3, 4, 5]

p reduce(array) { |acc, num| acc + num }                    # => 15
p reduce(array, 10) { |acc, num| acc + num }                # => 25
#reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass
p reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
p reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']