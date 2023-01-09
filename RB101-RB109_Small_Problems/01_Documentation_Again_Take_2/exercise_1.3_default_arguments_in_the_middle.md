
```ruby
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

#=> [4, 5, 3, 6]
```

### [Default Positional Arguments](https://ruby-doc.org/core-3.1.2/doc/syntax/calling_methods_rdoc.html#label-Default+Positional+Arguments)

Here we have default arguments supplied to the method. Ruby will use these defaults to make up for missing arguments. It will fill in the missing arguments from left to right.

First, `4` is assigned to a, then `6` is assigned to `d`. There are two defaults in the middle but we have one more unused arguement, `5`. This will be assigned to `b` and `c` uses its default of `3`.