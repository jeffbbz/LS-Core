module Walkable
  def walk
    puts "Let's go for a walk!"
  end
end

class Cat
  include Walkable

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
kitty.walk

=begin

Although the `Cat` class does not have a `walk` method, its objects
are exposed to one in the `Walkable` module that is mixed in via
the `include` method call on line 8. This allows `Cat` class
instances to access any behavior exposed by the module, in this
case just one method, `walk`
  
=end