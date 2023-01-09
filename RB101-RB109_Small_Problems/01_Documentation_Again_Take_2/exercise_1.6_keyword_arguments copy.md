
```ruby
5.step(to: 10, by: 3) { |value| puts value }

# prints 
# 5 
# 8
#=> 5
```

### [`Numeric#step`](https://docs.ruby-lang.org/en/3.1/Numeric.html#method-i-step)

#### Signature:
**`step(to = nil, by = 1) {|n| ... } → self`
`step(to = nil, by: 1) {|n| ... } → self`
`step(by: 1, to: ) {|n| ... } → self`
`step(by: , to: nil) {|n| ... } → self`** 

`Numeric#step` generates a sequence of numbers from `self` (the value of the calling integer object) until the the value of an integer `limit` keyword/named argument is reached. It does this in intervals of the (non-zero) integer `step` keyword/named argument.

If a block is given, the block is called with each number in the sequence.

`Numeric#step` returns `self` (the value of the original calling integer object).

#### **Code Explanation**

In the given example, the sequence begins with `5`, which the call to the `Kernel#puts` method in the block prints to screen. On the next iteration it increments by `3` to `8`, which is again printed to screen by the block. As the `limit` is `10`, and an additional increment of `3` would be more than `10`, the execution ceases and `Numeric#step` returns the calling object.