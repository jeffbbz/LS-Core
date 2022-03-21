[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# => [1, nil, nil], output = 2 3

# Enumerable#map returns a new array of objects returned by successive calls on each element by a block
# In this case, 1 evaluates to false in the if condition, so it follows the else condition
# and it returns its self (1) and is added to the new array. 2 and 3 both are true in the
# if condition so the puts method is invoked on them and they are printed to the console. But
# puts calls always return nil so nil is returned twice and added to the new array twice.