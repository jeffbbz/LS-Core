# Small Problems > Debugging > What's wrong with the output?

[Link to Problem](https://launchschool.com/exercises/12f874e9)

```ruby
arr = ["9", "8", "7", "10", "11"]
p arr.sort do |x, y|
    y.to_i <=> x.to_i
  end

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 
```



## The Problem

The problem here is one of precedence in ruby. The do...end block is one of the lowest precedence bindings in ruby, in other words the `sort` method call on `arr` has bound more tightly to the `p` method it is passed to then the block passed to it. So what we are outputing with `p` is effectively just `arr.sort` which sorts the `arr` elements as strings instead of integers as the block would do. There are two simple ways to fix this issue. The first is to put parenthesis around the `sort` method call and the block. This will bind the block to the `sort` call and pass it's return value to  `p`, like we want. The second would be to re-write the expression with `{ }` block instead of the `do..end` block. `{ }` has a higher precedence and will allow the block to bind more tightly to the `sort` call then the `sort` call to the `p` call:

```ruby
arr = ["9", "8", "7", "10", "11"]
p (arr.sort do |x, y|
    y.to_i <=> x.to_i
  end)

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["11", "10", "9", "8", "7"] 

# or

arr = ["9", "8", "7", "10", "11"]
p arr.sort { |x, y| y.to_i <=> x.to_i }

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["11", "10", "9", "8", "7"] 
```
