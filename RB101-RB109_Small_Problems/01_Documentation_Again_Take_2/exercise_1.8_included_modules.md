
```ruby
a = [5, 9, 3, 11]
puts a.min     # 3
puts a.min(2)  # 3 5
```

### [`Enumerable#min`](https://ruby-doc.org/core-3.1.2/Enumerable.html#method-i-min)

#### Signature:  
**`min → element`**  
**`min(n) → array`**  
**`min {|a, b| ... } → element`**  
**`min(n) {|a, b| ... } → array`**  

`Enumerable#min` returns the element that gives the minimum value. An option integer argument allows for the return of x number of values.


#### **Code Explanation**

By changing passing in the integer object `2` as an argument to the `Enumerable#min` call on the array referenced by local variable `a`, we can return the two smallest array values.

#### **Multiple Inheritance vs. mix-in modules**

Some languages use *Multiple Inheritance (MI)* wherein a class can inherit from two or more immediate superclasses. 

Ruby uses something similar called *mix-in modules* or *mix-ins*. With mix-ins classes of different types can share methods/behaviors without inheritance.

The Enumerable module is one of the most common mix-ins for iterating through collections (arrays, hashes, ranges).