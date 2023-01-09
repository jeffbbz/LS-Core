# Small Problems > Debugging > Countdown

[Link to Problem](https://launchschool.com/exercises/3919350b)

```ruby
def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  decrease(counter)
end

puts 'LAUNCH!'
```

## The Problem

The code given is supposed to count down from 10-1, outputing a string represenation of each number to screen before outputing the string `LAUNCH!`. However as it currently functions, it outputs only the number `10`, ten times, and then the Launch string. The reason that this occurs because although we pass the integer referenced by the `counter` variable (initilalized on line 5 to `10`) as an argument to the `decrease` method invocation on line 9, the decrease method does not (and is not able to) mutate the integer referenced by counter. Instead it re-assigns its method local variable `counter` (a different variable than the one initialized on line 5, although originally referencing the same integer object) to reference the return value of subtracting `1` from its current value, which is the desired next number 9, however, this method return value is not used in any manner, and the block passed to the times method call on lines 7-10 continues to output the number referenced by the outer scoped local variable `counter` which continues to be `10`.

There are of course many ways to fix this. Instead of calling the separate `decrease` method, we could decrement the `counter` variable from within the times block:

```ruby
counter = 10

10.times do
  puts counter
  counter -= 1
end

puts 'LAUNCH!'
```

This works because blocks can access local variables initialized in an outerscope, where as methods cannot.

we could also also re-assign `counter` from within the block passed to the `times` call, setting it to reference the return value of the call to `decrease` with itself passed as argument:

```ruby
def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'
```



Technically, the re-assignment of `counter` on line 2  is not necessary either so it could be changed to:

```ruby
def decrease(counter)
  counter - 1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'
```



## Further Exploration

Modify the code to specify 10 only once.

```ruby
def decrease(counter)
  counter - 1
end

counter = 10

counter.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'
```

