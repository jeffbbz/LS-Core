class Cat
  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end
end

kitty = Cat.new
Cat.generic_greeting

=begin

As line 8 calls a method on the class itself, the method called
must be a class method. So we define the method on line 2 prepended
with self. to create a class method.

=end

# Further Exploration: Why does this work?

kitty.class.generic_greeting # => Hello! I'm a cat!

=begin

This works because the return value of calling the Kernel#class 
public instance method on `kitty` is the its class, which makes
it possible to chain the Cat::generic_greeting class method which
must be called on a class.

=end