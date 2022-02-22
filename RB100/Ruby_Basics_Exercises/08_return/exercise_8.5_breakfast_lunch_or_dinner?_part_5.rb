#Exercise 8.5

def meal
  'Dinner'
  puts 'Dinner'
end

p meal

# prints Dinner nil. This is because the last line of the method is puts
# which always returns nil and then on line 8 we use p which which prints
#the return value. Dinner is also printed because of the puts in the method