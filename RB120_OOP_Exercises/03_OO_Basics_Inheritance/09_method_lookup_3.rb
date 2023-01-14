module Flyable
  def fly
    "I'm flying!"
  end
end

class Animal
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

class Bird < Animal
  include Flyable
end

bird1 = Bird.new("Red")
bird1.color

=begin

Method Lookup Path:

First Ruby checks the immediate class of the instance: Bird.
Next Ruby checks any included modules, in this case: Flyable.
Next Ruby checks the inherited superclass: Animal. The `color`
method is found, so the lookup ends and the method is executed.

Bird > Flyable > Animal

=end