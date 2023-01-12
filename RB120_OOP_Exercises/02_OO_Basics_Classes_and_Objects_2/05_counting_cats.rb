=begin
  
### Algorithm
1. Define a Cat Class
2. Keep Track of number of objects instantiated for class
  - Initialize a class variable @@cat_count to 0
  - Define an initialize constructor method
    - increment the value referenced by @@cat_count by 1 upon
      each instantiation
3. Define a class method Cat::total that prints out the total
  - Invoke the puts method to print out a string represenation
    of the current value referenced by the @@cat_count class
    variable

=end

class Cat
  @@cat_count = 0

  def initialize
    @@cat_count += 1
  end

  def self.total
    puts @@cat_count
  end
end

kitty1 = Cat.new
kitty2 = Cat.new

Cat.total

# On line 18 we initialize a class variable @@cat_count to 0.
# Class variables handle data about the class itelf.

# We increment the count everytime an object is instantiated by
# including it in the initialize constructor method.