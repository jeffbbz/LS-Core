# RB101 Lesson 3: Practice Problems - Medium 2.3

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#=> My string looks like this now: pumpkins
#=> My array looks like this now: ["pumpkins", "rutabaga"]

# The the string object referenced by the main scoped variable my_string has not been
# modified because re-assignment (String#+=) is not mutating. Inside the method, the passed value
# is re-assigned as pumpkinsrutabega to a locally scoped variable but this change has
# no effect on the main scoped my_string variable. 

# On the other hand, the main scoped my_array collection variable has been modified
# because the shovel operator (Array#<<) is mutating.

