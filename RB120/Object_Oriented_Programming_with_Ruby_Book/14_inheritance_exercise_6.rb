module Haulable
  def haul
    puts "I'm a big guy, I love to haul!"
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :year, :model
  @@vehicle_count = 0

  def initialize(year, model, color)
    @year =  year
    @model = model
    @color = color
    @current_speed = 0
    @type = self.class.to_s.downcase
    @@vehicle_count += 1
  end

  def age
    puts "This #{@type} is #{how_old} years old."
  end

  def self.created_count
    puts "#{@@vehicle_count} vehicles have been created."
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

  private

  def how_old
    Time.now.year - self.year
  end
end

class Car < Vehicle
  DOOR_NUMBER = 4
end

class Truck < Vehicle
  DOOR_NUMBER = 2
  include Haulable
end

sonata = Car.new(2011, "Hyundai Sonata", "blue")
bulger = Truck.new(2005, "Toyota Bulger", "black")

sonata.age
bulger.age
sonata.current_year