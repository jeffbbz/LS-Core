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
end

sonata = MyCar.new(2011, "Hyundai Sonata", "blue")
puts sonata.year
puts sonata.color
sonata.color = "yellow"
puts sonata.color
