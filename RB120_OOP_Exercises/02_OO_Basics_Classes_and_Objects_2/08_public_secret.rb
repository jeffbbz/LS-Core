=begin

### Algorithm
1. Define a Person class
2. Initialize a @secret instance variable
3. Define setter and getter methods for @secret
4. Invoke the setter method to assign a string object to @secret
5. Invoke the getter method to print the value of the object referenced by @secret

=end

class Person
  attr_accessor :secret
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
puts person1.secret

