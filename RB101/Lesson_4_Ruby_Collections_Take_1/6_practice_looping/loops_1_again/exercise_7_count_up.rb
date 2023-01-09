# Exercise 7

count = 1

until count > 10
  puts count
  count += 1
end

# Explanation

# On line 3, the local variable count has been initialized to reference the integer object 1.
# Lines 5-8 is an until loop whose condition is set to iterate until the value referenced by
# the count variable is greater than 10. The loop calls the String#puts method on the current
# value referenced by the count variable, incrementing it by one (through syntatic sugar reassignment)
# until the condition is met and the loop exits.

