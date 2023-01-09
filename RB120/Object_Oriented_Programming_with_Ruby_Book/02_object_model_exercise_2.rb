# Modules are created with the keyword module and the name of the module.

module Shout
  def shout(words) # This module contains one behavior, which the method `shout`
    puts words.upcase + "!!!!!"
  end
end

class NewClass # Here we have created an instance of the NewClass class
  include Shout # within the class we invoke the include method to mix in the Shout module
end

# Here we instantiate a new object 'new_object' by calling the `new` method on the NewClass class
new_object =  NewClass.new

# Now we call the shout method found in the Shout module on the NewClass object and pass it a string
new_object.shout("hey guys")

# => HEY GUYS!!!!!

=begin

A Module is a group of actions which classes can access via mixins. 
Modules used via invocation of the `include` method. 
Then behaviors declared in the module can be used by a class and its objects.
They are a way to use polymorphism in Ruby.
Modules extend functionality of a class in a DRY manner

Modules also allow for namespacing which helps to organize code
=end

module Careers
  class Engineer
  end

  class Teacher
  end
end

first_job = Careers::Teacher.new