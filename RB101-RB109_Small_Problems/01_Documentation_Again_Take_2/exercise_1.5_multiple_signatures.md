
```ruby
a = %w(a b c d e)
puts a.fetch(7)
#=> IndexError (index 7 outside array bounds)

puts a.fetch(7, 'beats me')
# prints beats me
#=> nil

puts a.fetch(7) { |index| index**2 }
# prints 49
#=> nil
```

### [`Array#fetch`](https://docs.ruby-lang.org/en/3.1/Array.html#method-i-fetch)

#### Signature:
**`fetch(index) → element`**
**`fetch(index, default_value) → element`**
**`fetch(index) {|index| ... } → element`**

`Array#fetch` takes an integer object argument and returns the array element at that `index`. 

It can also accept a second `default value` argument to return if the first `index` argument is not in range.

Finally, if an `index` argument and a block are passed to it, `Array#fetch` will return the element at that `index` if in range or else call the block using the `index` argument, returning the return value of the block.
