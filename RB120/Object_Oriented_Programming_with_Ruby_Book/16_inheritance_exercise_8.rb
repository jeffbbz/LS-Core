# bob = Person.new
# bob.hi

=begin
  
NoMethodError: private method `hi' called for #<Person:0x007ff61dbb79f0>
from (irb):8
from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

Looking at this error, we are trying to access private method (`hi`)
from outside of the class, which cannot be done. private methods
can only be accessed via other methods inside the class.

We can fix this by either adding a method inside the class to 
call from outside or by making the `hi` method public.

=end

class Person
  
  def say_hi
    self.hi
  end

  private

  def hi
    puts "hi!"
  end
end

bob = Person.new
bob.say_hi