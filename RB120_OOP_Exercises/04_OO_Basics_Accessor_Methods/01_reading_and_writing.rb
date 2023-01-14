class Person
  attr_accessor :name
end

person1 = Person.new
person1.name = "Jessica"
puts person1.name

=begin

Line 6 attempts to call a public instance accessor method `name` 
on the Person object referenced by `person1` and assign the 
the value of its instance variable `@name` to the String argument
passed in ("Jessica"). For this to succeed, the Person class
must have a publically exposed setter method for @name.

Meanwhile like 7 attempts to pass the value of the string object
referenced by the instance variable @name to the puts method by
calling a public instance getter method name. For this to succeed, the Person class
must have a publically exposed getter method for @name.

We can define both of these methods as well as initialize the @name
instance variable at once by calling attr_accessor and passing it
:name as an argument.

=end