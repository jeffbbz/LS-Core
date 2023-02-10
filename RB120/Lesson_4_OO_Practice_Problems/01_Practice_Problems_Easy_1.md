# [Practice Problems: Easy 1](https://launchschool.com/lessons/f1c58be0/assignments/a5cfd2ae)



## Question 1

All of the answers are objects in Ruby. **All values are objects in Ruby.**  `true` is a TrueClass object, `"hello"`is a string object, `[1, 2, 3, "happy days"]` is an array objects whose elements are integer and string objects, and `142` is an integer object. We could find out what class they are by invoking `Kernel#class` on them:

```ruby
p true.class                                     # => TrueClass
p "hello".class                                  # => String
p [1, 2, 3, "happy days"].class                  # => Array
[1, 2, 3, "happy days"].each {|el| p el.class }  # => Integer, Integer, Integer, String
p 142.class                                      # => Integer
```



## Question 2

```ruby
module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed

  def go_slow
    puts "I am safe and driving slow."
  end
end

class Truck
  include Speed

  def go_very_slow
    puts "I am a heavy truck and like going very slow."
  end
end

Car.new.go_fast
Truck.new.go_fast
```

To expose the `Car` and `Truck` class to the behavior in the `Speed` module, which is the `go_fast` method, the key word include followed by the module name needs to be added to the class definitions. Once the module has been mixed in, its behaviors are accessible to objects of the class in the same manner as the classes own behavior is, and any instance of the class can call the instance methods of the module.



## Question 3

```ruby
module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed
  def go_slow
    puts "I am safe and driving slow."
  end
end

small_car = Car.new
small_car.go_fast
# => I am a Car and going super fast!
```

On line 15, the `Car` class object stored in the local variable `small_car` invokes the `Speed#go_fast` instance method (on lines 2-4) which has been mixed in to the `Car` class via the `include` keyword on line 8, from the `Speed` module on lines 1-5. `Speed#go_fast` invokes the `Kernel#puts` method and passes in a string as an argument. Within in the string, string interpolation (which itself invokes `to_s` method) is used to include in the output the name of the class of the `#go_fast` calling object by calling `Kernel#class` on `self` which in the case of line 15, refers to the `Car` class object referenced by `small_car`. 



## Question 4

```ruby
class AngryCat
  def hiss
    puts "Hisssss!!!"
  end
end

AngryCat.new
```

New instances of a class are instantiated by calling the `BasicObject::new` public class method on a class.



## Question 5

```ruby
class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

pepperoni = Pizza.new("pepperoni")
apple = Fruit.new('apple')

p pepperoni.instance_variables    # => [:@name]
p apple.instance_variables        # => []
```

Only objects of the `Pizza` class would have instance variables because the `Pizza#initialize` constructor instance method, which is invoked at instantiation of `Pizza` class objects initializes the `@name` instance variable on line 9. The `Fruit` class does not have any instance variables because instance variables are prefixed with an `@` sign. You can also check if an object has instance variables by invoking the `Object#instance_variables` method on it which will return an array of all instance variables of an instance as symbols. When we do so in this case we see that our `Fruit` class object returns an empty array meaning it has no instance varibles, while our `Pizza` class object returns an array with one `@name` instance variable.



## Question 6

By default an object uses `Object#to_s` which prints a string representation of the object which includes the object's class and an object id. This can be (and often is) overridden by subclasses of Object. The best place to find out this info is in the [Ruby Documentation](https://docs.ruby-lang.org/en/3.1/Object.html#method-i-to_s).

```ruby
class Pizza
  def initialize(name)
    @name = name
  end
end

pepperoni = Pizza.new("pepperoni")
puts pepperoni                      # => #<Pizza:0x00007fbc3d8556a0>
```



## Question 7

```ruby
class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    self.age += 1
  end
end
```

In the above example, `self` refers to whatever instance of the `Cat` class invokes the `Cat#make_one_year_older` instance method. 



## Question 8

```ruby
class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end
```

In the above code, the `self` on line 10 refers to the `Cat` class. A custom class method is defined by prepending `self.` to a method name.



## Question 9

```ruby
class Bag
  def initialize(color, material)
    @color = color
    @material = material
  end
end

Bag.new("red", "cotton")
```

To instantiate a new `Bag` class object, we would call the `BasicObject::new` public class method on the `Bag` class. We also need to pass in two arguments as the `Bag` class has a constructor method, `Bag#initialize` which executes upon object instantiation, which requires two arguments.

