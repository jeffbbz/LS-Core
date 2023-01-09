class MyCar
  attr_accessor :color
  attr_reader :year
  
  def initialize(year, model, color)
    @year =  year
    @model = model
    @color = color
    @current_speed = 0
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
    puts "You shut off the car!"
  end

  def spray_paint(color)
    self.color = color
    puts "Cool! You've painted your car #{self.color}!"
  end

  def self.mpg(gallons, miles)
    puts "This car gets #{miles / gallons} mpg!"
  end
end

MyCar.mpg(15, 300)
