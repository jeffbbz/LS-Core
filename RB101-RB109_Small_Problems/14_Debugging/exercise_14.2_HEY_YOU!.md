# Small Problems > Debugging > HEY YOU!

[Link to Problem](https://launchschool.com/exercises/bb1c8d5d)

```ruby
def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'
```

## The Problem

The problem here is with the call to `String#chars` on line 2. `chars` returns a new array so although the characters of the new chars array have been mutated to capital letters, this has no effect on the string referenced by the local variable `name` which has not been altered. Additionally, the new upcased chars array has not been stored or used.

As usual there are a variety of ways this could be fixed. Instead of passing the string referenced by the `name` variable to the puts call on line 3, we could pass the string referenced by `chars`. In order to do that we need to initialize a new local variable `chars` to reference the return value of the `chars` and `each` method calls on `name` . This also requires us to call the` join` method on that return value or else it will return an array of string characters.

```ruby
def shout_out_to(name)
  chars = name.chars.each { |c| c.upcase! }.join
  puts 'HEY ' + chars
end

shout_out_to('you') # expected: 'HEY YOU'
```

We could also just skip all of line 2 and call the `String#upcase` method directly on the string referenced by the `name` variable:

```ruby
def shout_out_to(name)
  puts 'HEY ' + name.upcase
end

shout_out_to('you') # expected: 'HEY YOU'
```

