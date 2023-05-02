items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# -------------

# 1

gather(items) do | *produce, grain |
  puts produce.join(", ")
  puts grain
end

# Let's start gathering food.
# apples, corn, cabbage
# wheat
# We've finished gathering!

# 2

gather(items) do | fruit, *veg, grain |
  puts fruit
  puts veg.join(", ")
  puts grain
end

# Let's start gathering food.
# apples
# corn, cabbage
# wheat
# We've finished gathering!

# 3

gather(items) do | fruit, *food |
  puts fruit
  puts food.join(', ')
end

# Let's start gathering food.
# apples
# corn, cabbage, wheat
# We've finished gathering!

# 4

gather(items) do | food_1, food_2, food_3, food_4 |
  puts [food_1, food_2, food_3].join(', ') + ", and " + food_4
end

# Let's start gathering food.
# apples, corn, cabbage, and wheat
# We've finished gathering!