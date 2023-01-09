# Small Problems > Debugging > Password

[Link to Problem](https://launchschool.com/exercises/23afd966)

```ruby
password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  password = new_password
end

def verify_password
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  set_password
end

verify_password
```



## The Problem

The first problem we encounter is a `NameError` exception on line 14. This happens because our method is unable to access the outer scope local variable `password` and therefore cannot compare its referenced value to method local variable `input`. This is resolved by passing in `password` as an argument on line 25 and adding a `password` parameter to the `verify_password` method on line 9.

```ruby
def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    
# ...

verify_password(password)
```

Although we no longer raise an error our code does not work as the password fails. The reason for this is because on line 6 of the `set_password` method we attempt to re-assign the outer scope variable `password` to reference the same object as `new_password`. However, that variable is inaccessible to the `set_password` method and that `password` variable is a separate independent variable which does not effect the outer scope `password` variable. So when we pass `password` into `verify_password` we are passing in the unchanged referenced value of `nil`. In order to fix this, we can initialize the outerscope `password` variable after the `set_password` method, and set it to reference the the return value of that method. Additionally we can delete line 6 of the `set_password` method as it is not necessary.

```ruby
def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
end

password = set_password

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  set_password
end

verify_password(password)
```



## Further Exploration

