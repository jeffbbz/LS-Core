# Problem

# # Replace the two `method_name` placeholders with actual method calls
# def convert_to_base_8(n)
#   n.method_name.method_name
# end

# # Replace `argument` with the correct argument below
# # `method` is `Object#method`, not a placeholder
# base8_proc = method(argument).to_proc

# # We'll need a Proc object to make this code work
# # Replace `a_proc` with the correct object
# [8, 10, 12, 14, 16, 33].map(&a_proc)

# Answer

def convert_to_base_8(n)
  n.to_s(8).to_i
end

base8_proc = method(:convert_to_base_8)
# This creates a Method Object
# #<Method: main.convert_to_base_8(n) /FILEPATH.rb:18>

# or

base8_proc = method(:convert_to_base_8).to_proc
# This creates a Proc
# #<Proc:0x00007f83a70f14a0 (lambda)>

# But the documentation says Object#method implements Method#to_proc? 
# so it isn't necessary?

p base8_proc

p [8, 10, 12, 14, 16, 33].map(&base8_proc)  # [10, 12, 14, 16, 20, 41]

# Lines 8 and 12 can also be written like this:

p [8, 10, 12, 14, 16, 33].map(&method(:convert_to_base_8))   # [10, 12, 14, 16, 20, 41]