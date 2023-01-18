class House
  include Comparable   # invoking include and passing in the built-in Comparable Module
                       # allows us to make our objects comparable if we define a custom
                       # <=> method.
  attr_reader :price

  def initialize(price)
    @price = price
  end

  def <=>(other)           # here we define our custom <=> method
    price <=> other.price  # if compares the return value of House#price of the calling House object with
  end                      # House#price method called on another House object passed in as
end                        # an argument.

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1

# Further Exploration

=begin

Price may be the way that we compare homes here, but there are probably many other ways
to compare homes: Size, age, number of rooms, not to mention quality measurements. So although
This works for our small problem here, the use here will cause problems later because of
its lack of clarity and inability to compare in other manners. Perhaps including Comparable
like this would be more useful in a Class that has less comparison ways. A Currency Class perhaps?

=end