class Student
  def initialize(name, year)
    @name = name
    @year = year
  end
end

class Graduate < Student
  def initialize(name, year, parking)
    super(name, year)
    @parking = parking
  end
end

class Undergraduate < Student
end

=begin

In order to implement these change:

1. First, we need to make `Graduate` and `Undergraduate` subclasses of the superclass `Student` on lines 8 and 15.

2. Second, we need to add the `keyword` super to the `Graduate#initialize` constructor method. This allows the
subclassed initialize method to access an initialize method further in the inhertiance chain, in this case the one
in Student class on lines 2-5. We also need to explicitly pass the `super` on line 10 two arguments (`name`, `year`) 
as by default `super` implicitely passes all arguments passed to the calling method, and we only want to pass those two.

3. Third, we can delete Undergraduate#initialize method as it merely calls Student#initialize with no added expressions.

4. Fourth, We need to initialize the instance variable `@parking` on line 11 and set it to reference the value referenced
by the parameter `parking`, passed in as an argument.

=end

# Further Exploration

class Student
  def initialize(name=nil, year=nil)
    @name = name
    @year = year
  end
end

class Graduate < Student
  def initialize(name, year, parking)
    super(name, year)
    @parking = parking
  end
end

class Undergraduate < Student
end

class NamelessProspective < Student
  def initialize
    super()
  end
end

grad = Graduate.new("Tommy", 2011, true)
under = Undergraduate.new("Chad", 2012)
prospect = NamelessProspective.new

p grad
p under
p prospect