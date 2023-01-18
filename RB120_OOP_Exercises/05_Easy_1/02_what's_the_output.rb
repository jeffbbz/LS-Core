puts "--------Broken--------"
puts ""

class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    @name.upcase!
    "My name is #{@name}."
  end
end

name = "Fluffy"
fluffy = Pet.new(name)
puts fluffy.name    # => Fluffy # the to_s called on name here is String#to_s because "Fluffy is a string" and String#to_s return self not a new object
puts fluffy         # => My name is FLUFFY.
puts fluffy.name    # => FLUFFY
puts name           # => FLUFFY     

# Fix
puts ""
puts "--------Fix--------"
puts ""

class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end

name = "Fluffy"
fluffy = Pet.new(name)
puts fluffy.name    # => Fluffy
puts fluffy         # => My name is FLUFFY.
puts fluffy.name    # => Fluffy
puts name           # => Fluffy     

# Further Exploration
puts ""
puts "--------Further Exploration--------"
puts ""

class  Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end

name = 42
fluffy = Pet.new(name)
name += 1
puts fluffy.name
puts fluffy
puts fluffy.name
puts name

=begin
  
It's important to remember what class an object is when assessing how it will respond
to a method. When the Integer object 42 (referenced by local variable name) is passed to
Pet#initialize and to_s is called on it, Ruby is not using the to_s defined in the class
because that is Pet#to_s for Pet class objects. Instead as the object is an integer
Ruby will execute Integer#to_s. Also Integer#to_s returns a new string object, which is why
incrememting the value of local var name on line 67 has no effect on the fluffy object's instance
var @name, they reference different objects after the Integer#to_s call.

=end
