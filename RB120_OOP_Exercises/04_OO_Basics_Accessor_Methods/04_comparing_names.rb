class Person
  attr_accessor :first_name
  attr_writer :last_name
  
  def first_equals_last?
    first_name == last_name
  end

  private

  attr_reader :last_name
end

person1 = Person.new
person1.first_name = "Dave"
person1.last_name = "Smith"
puts person1.first_equals_last?

=begin
  
If we need to keep certain data private, accessible only to
methods within a class defintion, we can invoke `private` and put
private methods beneath it. In our example above we invoke
`private` on line 9 and put the call to `attr_reader` for `@last_name`
beneath it. This means that the `first_equals_last?` method on lines
5-7 can access it, because it is inside the class, but if we tried
to access it from outside, say on line 17, we would raise a 
`NoMethodError` exception.

=end
