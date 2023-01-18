module Drivable
  def drive   # the self. was removed from the method name. mixin modules should not include
  end         # self. which makes drive a module method not an instance method usuable by
end           # an instance of the class which includes Drivable.

class Car
  include Drivable
end

bobs_car = Car.new
bobs_car.drive