# Small Problems > Easy 2 > String Assignment
[Link to Problem](https://launchschool.com/exercises/a12ef94e)

```ruby
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# Output:
# BOB
# BOB

# => nil
```

## Take 1 - 03/04/22

Why? The local variable `name` is initialized and assigned to reference the String object
'Bob'. Then another variable `save_name` is initialized and assigned to the variable `name` 
which makes `save_name` also reference the same string object. Then the `#upcase!` method is 
called on the string object referenced by `name`, which is the same object that `save_name` 
is pointing to. `#upcase!` is a mutating method so that object mutates and any variables
pointing to this object (in this case `name` and `save_name`) still point to the same 
(now mutated) object.


## Take 2 - 10/04/22

On line 1, the local variable `name` is initialized and set to reference a string object with a value of `'Bob'`. On line 2, another local variable `save_name` is intialized to reference the value that `name` is referencing. At this point both local variables point to the same string object, `'Bob'`. On line 3, the `String#upcase!` method is called on the string object referenced by the variable `name`. This is a mutating method that returns the calling string modified to all uppercase characters. As both variables were assigned to reference the same string, any modifications that happen to that string will be visible via both variables. So on line 4, when the value referenced by both the `name` and `save_name` variables are passed to the `Kernel.puts` method, the same string, which has been mutated to the value of `"BOB"`, will be output twice.