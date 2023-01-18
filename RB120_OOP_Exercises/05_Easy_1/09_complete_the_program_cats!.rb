class Pet
  attr_reader :name, :age
  
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Cat < Pet
  attr_reader :color

  def initialize(name, age, color)
    super(name, age)
    @color = color
  end

  def to_s
    "My cat #{name} is #{age} years old and has #{color} fur."
  end
end

pudding = Cat.new("Pudding", 7, "black and white")
butterscotch = Cat.new("butterscotch", 10, "tan and white")
puts pudding, butterscotch


=begin

As our `Cat` class objects take three arguements and the `Pet#initialize` constructor method 
only takes 2, we define a new `Cat#initialize` method for the `Cat` class. Within the method, 
`super` is called and passed the two arguments that `Pet#initialize` takes and then one
new ivar `@color` is initialized to reference the color argument passed in. The `Cat` class
also needs a custom `to_s` method to output as per our requirements so we define Cat#to_s
and use string interpolation to access and output the particular states of each instance.

To access those states we also need a getter method for the various ivars. So we call `attr_reader`
and pass it `:color` in the `Cat` class definition, and call it again and pass it `:name`, and `:age`
in the `Pet` super class definition.

=end

# Further Exploration: An alternative approach to this problem would be to modify the Pet 
# class to accept a colors parameter. If we did this, we wouldn't need to supply an 
# initialize method for Cat.

# Why would we be able to omit the initialize method? 
# Would it be a good idea to modify Pet in this way? Why or why not? 
# How might you deal with some of the problems, if any, that might arise from modifying Pet?

=begin

If we modified `Pet#initialize` to accept three parameters we could omit `Cat#intialize`
because `Cat` class objects inherit all the behaviors of the `Pet` class and would therefore
have access to `Pet#initialize`. For this small problem there is not issue with modifying the
`Pet` class in this way, but in the scope of a larger program it might not be the best choice.
If we later add another subclass which inherits from `Pet` it would be required to have
three arguments, which we might not need or want.

This could be handled however by a setting default value for the color arguement passed to 
`Pet#initialize`. This way if no color value where passed in, it would not matter.

Below is one example:

=end

class Pet
  attr_reader :name, :age
  
  def initialize(name, age, color=false)
    @name = name
    @age = age
    @color = color if color
  end
end

class Cat < Pet
  attr_reader :color

  def to_s
    "My cat #{name} is #{age} years old and has #{color} fur."
  end
end

class Fish < Pet
  def to_s
    "My fish #{name} is #{age} years old."
  end
end

pudding = Cat.new("Pudding", 7, "black and white")
butterscotch = Cat.new("butterscotch", 10, "tan and white")
puts pudding, butterscotch
todd = Fish.new("Todd", 11)
puts tad