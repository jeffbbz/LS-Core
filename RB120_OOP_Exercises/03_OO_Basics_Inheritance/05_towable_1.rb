module Towable
  def tow
    puts "I can tow a trailer!"
  end
end

class Truck
  include Towable
end

class Car
end

truck1 = Truck.new
truck1.tow

# On lines 1-5 we define the `Towable` module. The module exposes
# one method, `tow` which has an output. We mix in this module
# on line 8 by invoking `include` and passing it the module name.
# Since this is inside the `Truck` class definition, any `Truck`
# instances now have access to anything in `Towable`, which in this
# case is the `tow` method.