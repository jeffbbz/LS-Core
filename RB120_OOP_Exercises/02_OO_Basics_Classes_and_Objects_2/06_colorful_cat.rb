=begin
  
### Algorithm
1. Define a Cat class
2. Initialize a constant to the color purple
3. Define a Cat#greet instance method
  - Print a greeting with the objects name and color
=end

class Cat
  CAT_COLOR = "purple"

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name} and I'm a #{CAT_COLOR} cat!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet