class Cat
  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{@name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet

=begin
  
On line 6 we have defined an instance method `greet`. This method
is only exposed to objects of the Cat class. On line 12, `kitty`
which is an `Cat` class object invokes the method. Upon invokation
like 7 outputs the string and the name of the object using string
interpolation. Although no arguments were passed to the method
instance variables such as `@name` are available anywhere in the 
class.
  
=end