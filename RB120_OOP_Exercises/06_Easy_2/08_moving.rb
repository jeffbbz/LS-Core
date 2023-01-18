module Walkable
  def walk
    puts "#{name} #{gait} forward"
  end
end

class Person
  include Walkable
  
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end
end

class Cat
  include Walkable

  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  include Walkable

  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end
end

mike = Person.new("Mike")
mike.walk
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
kitty.walk
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
flash.walk
# => "Flash runs forward"

# To allow this code to function, all the included objects need to have access to a `walk`
# method. This method needs to output to screen, the objects name, the return value of its
# #gait method, and the word forward all as string. The most obvious way to do this would
# be to create a Walkable module with such a method and include it in each class. As
# this method adds functionality/allows a has-a relationship (has the ability to walk) this
# probably makes more sense then createing a new superclass that the subclasses here can inherit
# from.