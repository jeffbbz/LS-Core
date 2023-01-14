class Person
  def age
    @age * 2
  end

  def age=(age)
    @age = age * 2
  end
end

person1 = Person.new
person1.age = 20
puts person1.age

# or

class Person
  def age
    double(@age)
  end

  def age=(age)
    @age = double(age)
  end

  private

  def double(num)
    num * 2
  end
end

person2 = Person.new
person2.age = 20
puts person2.age
