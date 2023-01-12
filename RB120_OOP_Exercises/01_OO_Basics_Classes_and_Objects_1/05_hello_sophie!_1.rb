class Cat
  def initialize(name)
    @name = name
    puts "Hello! My name is #{@name}"
  end
end

kitty = Cat.new('Sophie')

=begin
  
Here the initialize constructor method accepts one argument
and upon the instantiation of the new `Cat` Object assigned to 
the local variable `kitty`, that argument is passed in, and 
an instance variable `@name` is intialized to reference its 
value (which in this case is the String object "Sophie"). 
This instance variable is then used with string interpolation
to output a greeting using the name of the object.

=end