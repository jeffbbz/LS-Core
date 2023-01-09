[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# => [1, 2, 3]

# Why? When the return value of the block is truthy, select will select the element.
# The return value of the block will always evaluate to true because 'hi' (the last
# evaluated expression in the method) is a truthy value. Therefore it will evaulate as 
# truthy on each iteration for each element and return all elements (in a new array).