
```ruby
a = [1, 4, 8, 11, 15, 19]

a.bsearch {|element| element > 8 }
```

### [`Array#bsearch`](https://docs.ruby-lang.org/en/3.1/Array.html#method-i-bsearch)

`Array#bsearch` uses [binary search](https://docs.ruby-lang.org/en/3.1/bsearch_rdoc.html) to find and return an element from an array.

Binary Searching has two search modes:

1. **Find-minimum**: Returns the first element for which the block returns `true`. The return value of the block must be `true` or `false`
   
2. **Find-any**: Returns any element for which the block returns zero. The return value of the block must be a numeric value.

In the above code example, it made the most sense to use *Find-minimum* mode.