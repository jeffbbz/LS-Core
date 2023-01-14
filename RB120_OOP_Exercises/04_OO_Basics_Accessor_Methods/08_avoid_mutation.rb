class Person
  def initialize(name)
    @name = name
  end

  def name
    @name.dup
  end 
end

person1 = Person.new('James')
person1.name.reverse!
puts person1.name


# If you chain a destructive or mutating method to a getter call
# you can mutate the return value which is a reference to the 
# instance variable, which means you permanately modify the 
# instance variable. To avoid this you can define a custom
# getter method which returns a duplicate of the @name instead.