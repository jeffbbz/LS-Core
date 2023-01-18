class Vehicle
  attr_reader :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end

  def to_s
    "#{make} #{model}"
  end
end

class Car < Vehicle
  def wheels
    4
  end
end

class Motorcyle < Vehicle
  def wheels
    2
  end
end

class Truck < Vehicle
  attr_reader :payload

  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
  end

  def wheels
    6
  end
end

# Further Exploration

# As it all vehicles in our example have wheels and it gets a bit un-DRY to repeat that
# instance method in each subclass, it would make sense to have a wheels method in the super
# class. It could be a instance method that accesses class constants from the subclasses
# for example:

class Vehicle
  attr_reader :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end

  def wheels
    self.class::WHEEL_NUM
  end

  def to_s
    "#{make} #{model}"
  end
end

class Car < Vehicle
  WHEEL_NUM = 4
end

class Motorcyle < Vehicle
  WHEEL_NUM = 2
end

class Truck < Vehicle
  WHEEL_NUM = 6
  
  attr_reader :payload

  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
  end
end

car1 = Car.new("Nissan", "Sentra")
puts car1.wheels

# However, there are vehicles without wheels (boats for example) and also number of wheels
# is more like an attribute than a behavior so perhaps this isn't the best idea in a larger
# program depending on what you're trying to achieve and what alterations to the program you
# might face later.