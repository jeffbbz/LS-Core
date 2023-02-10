# [Practice Problems: Easy 2](https://launchschool.com/lessons/f1c58be0/assignments/25448951)



## Question 1

```ruby
class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

oracle = Oracle.new
oracle.predict_the_future
```

The return value will be randomly different each time. A string will be returned starting with `"You will"` + one of the three string objects from the array returned by calling `Oracle#choices` method



## Question 2

```ruby
class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

trip = RoadTrip.new
trip.predict_the_future
```

The `RoadTrip` sub-class inherits from the `Oracle` super-class so it has access to any behavior defined in the `Oracle` class. Line 17 instantiates a new `RoadTrip` class object and stores its reference in local variable `trip`. Line 18 invokes `Oracle#predict_the_future` instance method on the `RoadTrip` object referenced by `trip`. This will return the string `"You will"` + the return value of the `#choices` instance method. However, since `RoadTrip` has its own `RoadTrip#choices` method, this will override `Oracle#choices`, and so the three string array from which `predict_the_future` randomly selects will be from those choices.

Ruby begins method name resolution from the calling objects class, then works up through ancestral heirarchy. So Ruby finds `RoadTrip#choices` before `Oracle#choices` and stops looking and executes the method. If Ruby did not find a `#choices` method in `RoadTrip`, it would then (in this case) look up the chain at `Oracle`, where it would find `Oracle#choices` and execute that.



## Question 3

Ruby when attempting to resolve a method invocation, Ruby follows a specific lookup path. First the immediate class of the calling object is searched for the method. If it is not found, any included modules are search, starting with the last included module to the first (bottom to top). If is not found there (or there are no mixed in modules), super-classes are searched. If there are any custom defined super-classes these are checked first. If there are none then the built-in ancestor classes that all objects share are searched in order from `Object` >> `Kernel` >> `BasicObject`. If a method is still not found then a `NoMethodError` exception is raised. A simple way to find an objects's ancestors is to invoke `ancestors` method on its class.

```ruby
module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end

p Orange.ancestors   # => [Orange, Taste, Object, Kernel, BasicObject]
p HotSauce.ancestors # => [HotSauce, Taste, Object, Kernel, BasicObject]
```

The lookup chain for the `Orange` class starts with itself, then the mixed in `Taste` module, followed by the built-in ancestors the `Object` class, the `Kernel` module, and the `BasicObject` class. The lookup chain for the `HotSauce` class is the same except it starts with itself not `Orange`.



## Question 4

```ruby
class BeesWax
  def initialize(type)
    @type = type
  end

  def type
    @type
  end

  def type=(t)
    @type = t
  end

  def describe_type
    puts "I am a #{@type} of Bees Wax"
  end
end

# can be changed to:

class BeesWax
  attr_accessor :type
  
  def initialize(type)
    @type = type
  end

  def describe_type
    puts "I am a #{type} of Bees Wax"
  end
end

```

Instead of manually defining the getter instance method (`Beeswax#type`) and setter instance method (`Beeswax#type=`), `attr_accessor :type` can be used without losing any functionally. Additionally, instead of referencing the `@type` instance variable on line 15 we can reference the getter method created by `attr_accesssor`.  ***It is standard practice to access instance variables via getter/setter methods rather than directly, if setter/getter methods are available.***



## Question 5

```ruby
excited_dog = "excited dog"
@excited_dog = "excited dog"
@@excited_dog = "excited dog"
```

Line 1 is a local variable, line 2 is an instance variable, and line 3 is a class variable. local variables have no special signs and are written in lowercase snake_case. Instance variables are prepended with a single '@' sign and written in lowercase snake_case, and class variables are written the same as instance variables but prepended with a double '@' sign.



## Question 6



```ruby
class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

Television.manufacturer
```

The method on Lines 2-4, is a class method. We know this because the name of the method is prepended with `self.`. Class methods like this are invoked on the class itself not on instance of the class.





## Question 7

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

p Cat.cats_count           # => 0
herman = Cat.new("tabby")
p Cat.cats_count           # => 1
derek = Cat.new("black")
p Cat.cats_count           # => 2
```

In the above code `@@cats_count` is a class variable of the `Cat` class. It appears to be used to keep a running count of how many `Cat` class objects have been instantiated.  While it is initialialized to reference `0`, on line 7 of the `Cat#initialize` constructor instance method, it is re-assigned to `1` plus its referenced value. As `#initialize` constructor methods are automatically invoked upon object instantiation, this means that each time a `Cat` class object is instantied, the value referenced by `@@cats_count` will increment by `1`. We can check that this is the case by instantiating some objects of the `Cat` class and then calling the  `Cat::cats_count` class method which returns the value referenced by the `@@cats_count` class variable.



## Question 8

```ruby
class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
  end
end
```

To allow a class to inherit from another class, we simply need to append `< <SuperClassName>` to the class name that we want to subclass.



## Question 9

```ruby
class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
  end
end
```

If a `play` method were added to the `Bingo` class this method would override the `Game#play` method calls for any `Bingo` class objects that invoke `play`. When a method of the same name found in a superclass is added to a subclass, Ruby will use the method as defined in the subclass for objects of that subclass.



## Question 10

There are many benefits to using Object Oriented Programming in Ruby:

The primary benefits of the object oriented model are encapsulation, polymorphism. If we only were able to code in the procedural model, it would be difficult to maintain large programs and pieces of code. Encapsulation sections code off from itself, allowing for easier interchangeability and maintainability, while also increasing security and decreasing the risk of issues in the code. We are also able to keep our code my concise and DRY through inheritance and polymorphism. These also help us to think and work at more abstract higher level with our code. This helps us to more easily conceptualize what we are creating.
