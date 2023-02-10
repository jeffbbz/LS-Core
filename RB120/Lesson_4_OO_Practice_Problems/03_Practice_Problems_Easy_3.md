# [Practice Problems: Easy 3](https://launchschool.com/lessons/f1c58be0/assignments/98073b61)



## Question 1

```ruby
class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end
```

```ruby
# Case 1

hello = Hello.new
hello.hi     # => Hello
```

On line 3 of Case 1, a new `Hello` class object is instantiated and a reference to it is stored in the local varaible `hello`. On line 4, the `Hello#hi` instance method is called on the `Hello` class object referenced by `hello`.  The `hello#hi` method (on lines 8-10) invokes `Greeting#greet` instance method and passes in the string object with a value of `Hello` to that method as an argument. The `Greetings#greet` method (lines 2-4) invokes the `Kernel#puts` method on the argument passed to it, which is referenced by the local variable `message`. This will output `"Hello"` to screen.

```ruby
# Case 2

hello = Hello.new
hello.bye     # => undefined method `bye' for #<Hello:0x00007fc57803cfd8> (NoMethodError)
```

Case 2 is very similar to case 1, except that when Ruby attempts to find a `#bye` method, it will be unable to because neither `Hello` or its ancestor classes have access to a `#bye` method. Therefore a `NoMethodError` exception will be raised.

```ruby
# Case 3

hello = Hello.new
hello.greet   # => wrong number of arguments (given 0, expected 1) (ArgumentError)
```

Case 3 will also raise an exception. This time an `ArgumentError` exception will be raised as although the `Hello` object referenced by local variable `hello` on line 4 does have access to the `Greeting#greet` method, as its class `Hello` is a subclass of the `Greeting` class, the `Greeting#greet` method takes an argument and an argument is not supplied when we invoked the method on line 4. 

```ruby
# Case 4

hello = Hello.new
hello.greet("Goodbye")     # => Goodbye
```

Case 4 is like case 3, except that it will not raise an exception because this time an argument (a string object with the value "Goodbye") has been passed to the `Greeting#greet` method invocation on the `Hello` object referenced by local variable `hello`.  Line 3 will output this argument to screen: "Goodbye"

```ruby
# Case 5

Hello.hi     # => undefined method `hi' for Hello:Class (NoMethodError)
```

Case 5 will also result in error. A NoMethodError will be raised because we are attempting to call an instance method `Hello#hi` on the class itself (`Hello`), rather than on an instance of the class.



## Question 2

```ruby
class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

Hello.new.hi    # => Hello

# or

class Greeting
  def self.greet(message)
    puts message
  end
end

class Hello < Greeting
  def self.hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

Hello.hi    # => Hello
```

The code could be fixed in at least two ways. First we could instantiate an instance of the `Hello` class and then call the `hi` method on that instance instead of on the class. This would be done by placing `.new` between `Hello` and `.hi` on line 19 of the original code. The second way would be to append `self.` to the name of the `hi` method found on line 8/30, thus changing it from an instance method to a class method. And then also doing the same for the `greet`  method found on lines 2-4/24-26.



## Question 3

```ruby
class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

jasper = AngryCat.new(3, "Jasper")
carl = AngryCat.new(6, "Carl")
```

The `AngryCat` class has a constructor instance method (`AngryCat#initialize`) which will automatically execute upon object instantiation. This method takes two arguments one for age and one for name, which it then assigns to newly initialized `@age` and `@name` instance variables respectively. Thus, just by instantiating a new `AngryCat` object and passing in two arguments, we can create an instance with a name and age. To make two different instances then we just instantiate two separate objects.

## Question 4

```ruby
class Cat
  attr_reader :type
  
  def initialize(type)
    @type = type
  end

  def to_s
    "I am a #{type} cat"
  end
end

tabby = Cat.new("tabby")
puts tabby                 # => I am a tabby cat
```

There are several changes we need to make to this code to achieve the desired output. First of all we need a way access the instance variable `@type` and its value. For this we can use the `attr_reader :type` shorthand to define a `type` getter method. Next we need to define a custom `Cat#to_s` method to overide the default `Object#to_s` inherited from the `Object` class. For this we define the method as usual, then use string interpolation to get a string interpretation of the value referenced by the `@type` instance variable (which is the return value of invoking the`Cat#type` instance method.) Then we merely call the puts method and pass it our `Cat` class object.



## Question 5

```ruby
class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

tv = Television.new
tv.manufacturer     # => undefined method `manufacturer' for #<Television:0x00007ff55084d878> (NoMethodError)
tv.model

Television.manufacturer
Television.model   # => undefined method `model' for Television:Class (NoMethodError)
```

Line 11 instantiates a new `Television` class object and stores its reference in local variable `tv`. Line 12 attempts to call `Television::manufacturer` class method on the object referenced by `tv`, but as class methods can only be called on classes themselves not their instances, this will raise a `NoMethodError` exception. If an exception had not been raised, Lines 13 and 15 would succeed in executing whatever expressions where found in thier called methods, but line 16 would also raise a `NoMethodError` exception as it is attempting to call an instance method `Television#model` on the class rather than an instance of the class. 



## Question 6

```ruby
class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    @age += 1
  end
end
```

We could remove the `self.` from line 10 and replace it with an '@' so that we are incrementing the instance variable directly.



## Question 7

```ruby
class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def self.information
    return "I want to turn on the light with a brightness level of super high and a color of green"
  end
end
```

The `return` on line 10 of the `Light::information` class method is not necessary as Ruby will implicitly return the last evaluated expression of a method, which is often the last line such as this. Also we do not use the writer functions of the `attr_accessor`, so we could probably just use `attr_reader`
