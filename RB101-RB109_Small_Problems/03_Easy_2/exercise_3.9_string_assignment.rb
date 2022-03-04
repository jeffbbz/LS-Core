#Exercise 3.9

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# will print: BOB BOB

# Why? The local variable name is initialized and assigned to reference the String object
# 'Bob'. Then another variable save_name is initialized and assigned to the variable name 
# which makes save_name also references the same string object. Then the #upcase! method is 
# called on the string object referenced by name, which is the same object that save_name 
# is pointing to. #upcase! is a mutating method so that object mutates and any variables
# pointing to this object (in this case name and save_name) still point to the same 
# (now mutated) object.