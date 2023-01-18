# module Walkable
#   def walk
#       puts "#{self} #{gait} forward"
#   end
# end

# class Noble
#   include Walkable
  
#   attr_reader :name, :title

#   def initialize(name, title)
#     @name = name
#     @title = title
#   end

#   def to_s
#     title + " " + name
#   end

#   private 

#   def gait
#     "struts"
#   end
# end

# class Person
#   include Walkable
  
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def to_s
#     name
#   end

#   private

#   def gait
#     "strolls"
#   end
# end

# class Cat
#   include Walkable

#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def to_s
#     name
#   end

#   private

#   def gait
#     "saunters"
#   end
# end

# class Cheetah
#   include Walkable

#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def to_s
#     name
#   end

#   private

#   def gait
#     "runs"
#   end
# end

# mike = Person.new("Mike")
# mike.walk
# # => "Mike strolls forward"

# kitty = Cat.new("Kitty")
# kitty.walk
# # => "Kitty saunters forward"

# flash = Cheetah.new("Flash")
# flash.walk
# # => "Flash runs forward"

# byron = Noble.new("Byron", "Lord")
# byron.walk
# # => "Lord Byron struts forward"
# byron.name
# # => "Byron"
# byron.title
# # => "Lord"

# Further Exploration with Inhertiance instead of Module

class Animal
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  
  def walk
    puts "#{self} #{gait} forward"
  end

  def to_s
    name
  end
end

class Person < Animal
  private

  def gait
    "strolls"
  end
end

class Noble < Person
  attr_reader :name, :title

  def initialize(name, title)
    super(name)
    @title = title
  end

  def to_s
    title + " " + name
  end

  private 

  def gait
    "struts"
  end
end

class Cat < Animal
  private

  def gait
    "saunters"
  end
end

class Cheetah < Cat
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

byron = Noble.new("Byron", "Lord")
byron.walk
# => "Lord Byron struts forward"
byron.name
# => "Byron"
byron.title
# => "Lord"

=begin
  
If we use inheritance instead of a module we would need to define a to_s method in the super
class Animal, and also a walk method, which all the subclasses would inherit. Then we
just need to put a custom to_s in Noble class to override the to_s in Animal class since
Noble class has different requirements for output.

Is to_s the best way to accomplish our task? Possibly not. Given the requirements of our 
program, we may need to_s to perform a different functionality, as to_s is used in a variety
of circumstances (and by puts and string interpolation) in which case a different name or 
full name method might be better.

=end

class Animal
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  
  def walk
    puts "#{display_name} #{gait} forward"
  end

  def display_name
    name
  end
end

class Person < Animal
  private

  def gait
    "strolls"
  end
end

class Noble < Person
  attr_reader :name, :title

  def initialize(name, title)
    super(name)
    @title = title
  end

  def display_name
    title + " " + name
  end

  private 

  def gait
    "struts"
  end
end

class Cat < Animal
  private

  def gait
    "saunters"
  end
end

class Cheetah < Cat
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

byron = Noble.new("Byron", "Lord")
byron.walk
# => "Lord Byron struts forward"
byron.name
# => "Byron"
byron.title
# => "Lord"