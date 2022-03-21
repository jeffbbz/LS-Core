{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# = [nil, 'bear']

Enumerable#map returns a new array of objects returned by calling the block on each element.
Here the first key-value pair is not largering than 3, so evaluates to false and so
nil is returned by the block and added to the array, because if no conditions in an if statement
evaluate to true, an if statement returns nil. Next the second key value pair does 
match the if condition and so its value 'bear' is added to the new array.