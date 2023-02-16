class Person
  attr_reader :name
  attr_accessor :location

  def initialize(name)
    @name = name
  end

  def teleport_to(latitude, longitude)
    @location = GeoLocation.new(latitude, longitude)
  end
end

class GeoLocation
  attr_reader :latitude, :longitude

  def initialize(latitude, longitude)
    @latitude = latitude
    @longitude = longitude
  end

  def ==(other_location)
    latitude == other_location.latitude && longitude == other_location.longitude
  end

  def to_s
    "(#{latitude}, #{longitude})"
  end
end

# Example

ada = Person.new('Ada')
ada.location = GeoLocation.new(53.477, -2.236)

grace = Person.new('Grace')
grace.location = GeoLocation.new(-33.89, 151.277)

ada.teleport_to(-33.89, 151.277)

puts ada.location                   # (-33.89, 151.277)
puts grace.location                 # (-33.89, 151.277)
puts ada.location == grace.location # expected: true
                                    # actual: false

=begin

Line 43 returns false, when we want it to return true, because Geolocation does not implement an `==`
method. Therefore the `==` we invoke is `BasicObject#==` which returns true if compared objects are
the exact same object. As our objects are not the same, but merely have the same location attribute 
values, this is returning false. To fix this we need to implement a custom `Geolocation#==` method 
to override the built-in functionality. This method can be defined in any manner we want, but here 
we have defined it to take one argument(the object being compared) and then return true if the value 
referenced by both latitude and longitude are the same for both objects in comparison.

=end