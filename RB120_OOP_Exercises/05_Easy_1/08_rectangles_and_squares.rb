class Rectangle
  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    @height * @width
  end
end

class Square < Rectangle
  def initialize(side)
    super(side, side)
  end
end

square = Square.new(5)
puts "area of square = #{square.area}"

=begin

As `Square` inherits from `Rectangle`, its objects are exposed to its `Rectangle#initialize` and 
`Rectangle#area` instance methods. Thus on line 18 when we instanitate a new `Square` class object
we and pass in the length of its sides (only one argument because a square has equal sides), we
can invoke super in `Square#initialize` and pass it the argument twice. In this way `square`,
our `Square` class object will be initialized with both `@height` and `@width` ivars. As 'square`
also inherits `Rectangle#area` method, we can call that on line 19.

=end