# [Practice Problems: Medium 1](https://launchschool.com/lessons/f1c58be0/assignments/652f8d69)



## Question 1

```ruby
class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def positive_balance?
    balance >= 0
  end
end
```

They are both correct, but Ben is in the right here. Because there is a getter method for the `@balance` instance variable (`attr_reader :balance`), he is able to call that method directly and use its return value (which is the value referenced by `@balance`) in the comparison with `0` on line 9 of the `#postive_balance` method. However, he could also add the '@' to balance to make the comparison directly with the instance variable like Alyssa suggested.



## Question 2

```ruby
class InvoiceEntry
  attr_accessor :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    self.quantity = updated_count if updated_count >= 0
  end
end

# or

class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    @quantity = updated_count if updated_count >= 0
  end
end
```

There are two issues with Alan's code. First there is currently no setter method for the @quantity instance variable, only a getter method, `attr_reader`. Thus he is unable to re-assign the value of @quantity via the expression on line 11. So first he should change his `attr_reader` to an `attr_accessor` (or add an `attr_writer` for quantity). Then he needs to append `self.` to quantity on line 11. 

Instead of all that he could also just prepend an '@' to quantity on line 11 to re-assign the instance variable directly.



## Question 3

```ruby
class InvoiceEntry
  attr_accessor :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    self.quantity = updated_count if updated_count >= 0
  end
end
```

By changing `attr_reader` on line 2 to `attr_accessor` we are also adding a setter method for the `@product_name` instance variable. When we look at the code that we have, this is not necessary and moreover this alters the public interface of the class in a way that might be dangerous or undesirable. It might be better to add a separate `attr_writer :product_name` after the `attr_accessor :quantity`. Additionally, there are now two different ways to re-assign the value of our `@quantity variable`, one of which circumvents the `update_quantity` method. This might cause issues later.



## Question 4

```ruby
class Greeting
  def greet(greeting)
    puts greeting
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



## Question 5

```ruby
class KrispyKreme
  attr_reader :glazing, :filling_type

  def initialize(filling_type, glazing)
    @filling_type = filling_type
    @glazing = glazing
  end

  def to_s
    filling = filling_type ? filling_type : "Plain"
    glazing ? "#{filling} with #{glazing}" : "#{filling}" 
  end
end
```

First we define getter methods for `@glazing` and `@filling_type` instance variables with `attr_reader`. Then we need to define a custom `to_s` method to override the default method. On line 10 of the method, we intialize local variable `filling` to reference the return value of a ternary operator wherein if the return value of the getter method for `@filling_type` is not `nil` (has a value) then `filling` will reference that value, otherwise, `filling` will reference the string object` "Plain"`. On line 11 we have another ternary operator which checks if the return value of the glazing getting method is `nil`. If it has a value/is not `nil`, then the first string with is returned by the method, if it is `nil` then the second string is returned.



## Question 6

```ruby
class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template
  end
end

# vs.

class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    self.template
  end
end
```

These both have the same output. However, in the second example we have added an unncessary `self.` to template on line 23. As this is calling a getter method we do not need `self` there.



## Question 7

```ruby
class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def status
    "I have a brightness level of #{brightness} and a color of #{color}"
  end

end
```

