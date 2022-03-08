# RB101 Lesson 3: Practice Problems - Medium 2.4

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#=> My string looks like this now: pumpkinsrutabaga
#=> My array looks like this now: ["pumpkins"]

# Now we have the opposite issue. The string has been modified by the << operator but
# the inner scoped array assignment is non mutating (a new object is created) and has
# no affect on the main scoped my_array variable.
