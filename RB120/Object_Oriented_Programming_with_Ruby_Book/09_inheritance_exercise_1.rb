class Vehicle
  attr_accessor :color
  attr_reader :year, :model

  def initialize(year, model, color)
    @year =  year
    @model = model
    @color = color
    @current_speed = 0
    @type = self.class.to_s.downcase
  end

  def speed_up(number)
    @current_speed += number
    puts "You speed up! Now you're going #{number} mph faster."
  end 

  def brake(number)
    @current_speed -= number
    puts "You hit the brakes! Now you're going #{number} mph slower."
  end
  
  def current_speed
    puts "You are going #{@current_speed} mph"
  end

  def shut_off
    @current_speed = 0
    puts "You shut off the #{@type}!"
  end

  def spray_paint(color)
    self.color = color
    puts "Cool! You've painted your #{@type} #{color}!"
  end

  def self.mpg(gallons, miles)
    puts "You're getting #{miles / gallons} mpg!"
  end

  def to_s
    "This #{@type} is a #{color}, #{year} #{model}. Nice!"
  end
end

class Car < Vehicle
  DOOR_NUMBER = 4
end

class Truck < Vehicle
  DOOR_NUMBER = 2
end

sonata = Car.new(2011, "Hyundai Sonata", "blue")
Car.mpg(15, 300)
puts sonata

bulger = Truck.new(2005, "Toyota Bulger", "black")
Truck.mpg(45, 300)
puts bulger

