class Animal
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

Class Bird < Animal

cat1 = Cat.new('Black')
cat1.color

=begin

Ruby Method Lookup Path:

Cat > Animal

=end