#Exercise 8.3

def meal
  return 'Breakfast'
  'Dinner'
end

puts meal

# Prints Breakfast. It does not print Dinner
# because the explicit return on line 4 will exit
# the method before Dinner on line 5.