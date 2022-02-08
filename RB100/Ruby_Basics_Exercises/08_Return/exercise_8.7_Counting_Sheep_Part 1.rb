#Exercise 8.7

def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

# 0 1 2 3 4 5. The Integer#times method iterates the given block 
# x (here 5) times, passing in values from zero to x-1. So here it will
# count 0-4 and print that.
# the method call also has a puts so it will run it one more time thus 0-5