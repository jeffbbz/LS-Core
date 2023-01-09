# class Person
#   attr_reader :name
#   def initialize(name)
#     @name = name
#   end
# end

# bob = Person.new("Steve")
# bob.name = "Bob"

=begin

We get this error because we are attempted to change the state of the instance variable
name but we have only set a getter method for name, not a setter method.
In order to fix this we can do several things, the easiest perhaps would be to change
attr_reader to attr_accessor or attr_writer (since in this case we don't use the getter)

=end

class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"
