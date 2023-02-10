# [Practice Problems: Hard 1](https://launchschool.com/lessons/f1c58be0/assignments/928366dd)



## Question 1

```ruby
module Travelable
  attr_accessor :speed, :heading, :fuel_capacity, :fuel_efficiency
  attr_reader

  def range
    @fuel_capacity * @fuel_efficiency
  end
end

class WheeledVehicle
  include Travelable

  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    @tires = tire_array
    self.fuel_efficiency = km_traveled_per_liter
    self.fuel_capacity = liters_of_fuel_capacity
  end

  def tire_pressure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end
end

class Auto < WheeledVehicle
  def initialize
    # 4 tires are various tire pressures
    super([30,30,32,32], 50, 25.0)
  end
end

class Motorcycle < WheeledVehicle
  def initialize
    # 2 tires are various tire pressures
    super([20,20], 80, 8.0)
  end
end

class Catamaran
  include Travelable

  attr_reader :propeller_count, :hull_count

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    # ... code omitted ...
  end
end
```

I've created a new module `Travelable`, to which I've moved things related to that module, which are shared by all classes. We then need to include this module in the `WheeledVehicle `and `Catamaran` classes. We also need to change the instance variable re-assignment in `WheeledVehicle` to accessing the setter method for those variables as defined in the module. This is done by deleting the `@` sign and adding `self.`

## Question 2

```ruby
module Travelable
  attr_accessor :speed, :heading, :fuel_capacity, :fuel_efficiency
  attr_reader

  def range
    @fuel_capacity * @fuel_efficiency
  end
end

# ... WheeledVehicle code omitted ...

Class WaterVehicle
  include Travelable

  attr_reader :propeller_count, :hull_count

  def initialize(km_traveled_per_liter, liters_of_fuel_capacity, num_propellers=1, num_hulls=1)
    self.km_traveled_per_liter = km_traveled_per_liter
    self.liters_of_fuel_capacity = liters_of_fuel_capacity
    @propeller_count = num_propellers
    @hull_count = num_hulls
  end
end 

class Catamaran < WaterVehicle
end

class MotorBoat < WaterVehicle
end

# or

Class WaterVehicle
  include Travelable

  attr_reader :propeller_count, :hull_count

  def initialize(km_traveled_per_liter, liters_of_fuel_capacity, num_propellers, num_hulls)
    self.km_traveled_per_liter = km_traveled_per_liter
    self.liters_of_fuel_capacity = liters_of_fuel_capacity
    @propeller_count = num_propellers
    @hull_count = num_hulls
  end
end 

class Catamaran < WaterVehicle
end

class MotorBoat < WaterVehicle
  def initialize(km_traveled_per_liter, liters_of_fuel_capacity, num_propellers, num_hulls)
    super(km_traveled_per_liter, liters_of_fuel_capacity, 1, 1)
end
```



## Question 3

```ruby
module Travelable
  attr_accessor :speed, :heading, :fuel_capacity, :fuel_efficiency
  attr_reader

  def range
    @fuel_capacity * @fuel_efficiency
  end
end

# ... WheeledVehicle code omitted ...

Class WaterVehicle
  include Travelable

  attr_reader :propeller_count, :hull_count

  def initialize(km_traveled_per_liter, liters_of_fuel_capacity, num_propellers=1, num_hulls=1)
    self.km_traveled_per_liter = km_traveled_per_liter
    self.liters_of_fuel_capacity = liters_of_fuel_capacity
    @propeller_count = num_propellers
    @hull_count = num_hulls
  end

  def range
    super + 10
  end
end 

class Catamaran < WaterVehicle
end

class MotorBoat < WaterVehicle
end
```
