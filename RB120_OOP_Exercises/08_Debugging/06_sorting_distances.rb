class Length
  attr_reader :value, :unit

  def initialize(value, unit)
    @value = value
    @unit = unit
  end

  def as_kilometers
    convert_to(:km, { km: 1, mi: 0.6213711, nmi: 0.539957 })
  end

  def as_miles
    convert_to(:mi, { km: 1.609344, mi: 1, nmi: 0.8689762419 })
  end

  def as_nautical_miles
    convert_to(:nmi, { km: 1.8519993, mi: 1.15078, nmi: 1 })
  end

  def <=>(other)
    case unit
    when :km  then value <=> other.as_kilometers.value
    when :mi  then value <=> other.as_miles.value
    when :nmi then value <=> other.as_nautical_miles.value
    end
  end

  def ==(other)
    case unit
    when :km  then value == other.as_kilometers.value
    when :mi  then value == other.as_miles.value
    when :nmi then value == other.as_nautical_miles.value
    end
  end

  def <(other)
    case unit
    when :km  then value < other.as_kilometers.value
    when :mi  then value < other.as_miles.value
    when :nmi then value < other.as_nautical_miles.value
    end
  end

  def <=(other)
    self < other || self == other
  end

  def >(other)
    !(self <= other)
  end

  def >=(other)
    self > other || self == other
  end

  def to_s
    "#{value} #{unit}"
  end

  private

  def convert_to(target_unit, conversion_factors)
    Length.new((value / conversion_factors[unit]).round(4), target_unit)
  end
end

# Example

puts [Length.new(1, :mi), Length.new(1, :nmi), Length.new(1, :km)].sort
# => comparison of Length with Length failed (ArgumentError)
# expected output:
# 1 km
# 1 mi
# 1 nmi

=begin
  
We raise an `Length with Length failed (ArgumentError)` on line 70 with the original code because we are attempting
to sort the `Length` instances but sort without a block requires the `<=>` method which the `Length` class does not have.
Therefore we must define a custom Length#<=> method. We do so on lines 20-26 with a case statement matching the other
comparison methods we already have. When the calling objects has a unit attribute of :km, then its value is compared to
the object passed in as argument's value in kilometers. This is done calling #as_kilometers method on the argument object
This in turn invokes the `convert_to` method and passes it arguments, :km, and a hash of unit keys and value pairs.
The convert_to method instantiates and returns a new Length class object whose unit is the passed in unit symbol and
value is the return value of dividing the current value of the object by the appropriate key value of the hash parameter
then invoking round with 4 passed as argument to limit the decimel places to 4. This returned Length instance then calls
the value getter method on itself back on line 95 returning the converted value which is then compared with the value of the 
original calling object. :mi and :nmi work in the same manner.

=end

# Further Exploration

