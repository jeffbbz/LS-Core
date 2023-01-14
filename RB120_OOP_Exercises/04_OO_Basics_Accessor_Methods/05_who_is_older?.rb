class Person
  attr_writer :age
  
  def older_than?(other)
    age > other.age
  end

  protected

  attr_reader :age
end

person1 = Person.new
person1.age = 17
person2 = Person.new
person2.age = 26

puts person1.older_than?(person2)

=begin
  
protected methods are very similar to private methods, except that
they allow the methods to be invoked between class instances rather than
just with a single instance. Using them simply means defining
our protected methods after invoking the `protected` access modifer

=end
