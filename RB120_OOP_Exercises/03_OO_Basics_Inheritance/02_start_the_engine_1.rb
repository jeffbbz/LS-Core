class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end
end

class Truck < Vehicle
  def initialize(year)
    super
    start_engine
  end
  
  def start_engine
    puts 'Ready to go!'
  end
end

truck1 = Truck.new(1994)
puts truck1.year

# Invoking the reserved keyword `super` allows us to invoke an
# inherited method that we have overwritten in our subclass.
# Invoking super without parenthesis passess all arguments.
# Invoking super with an empty parenthesis passes no args