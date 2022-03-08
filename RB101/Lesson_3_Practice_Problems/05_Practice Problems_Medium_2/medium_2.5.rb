# RB101 Lesson 3: Practice Problems - Medium 2.5

# def tricky_method(param)
#   param = param += "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]

# puts "My string looks like this now: #{tricky_method(my_string)}"
# puts "My array looks like this now: #{tricky_method(my_array)}"

# p my_string
# p my_array


def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"