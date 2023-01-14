class Person
  attr_accessor :name
  attr_writer :phone_number
end

person1 = Person.new
person1.name = 'Jessica'
person1.phone_number = '10123456789'
puts person1.name


=begin

Line 2 invokes the attr_accessor method and passes it `:name`
as an argument. This creates a setter and a getter method for
instance variable @name. Line 3 invokes attr_writer
and passes it :phone_number. This creates only a setter method
for the @phone_number instance variable.

=end