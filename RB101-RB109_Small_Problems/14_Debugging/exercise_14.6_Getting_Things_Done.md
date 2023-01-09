# Small Problems > Debugging > Getting Things Done

[Link to Problem](https://launchschool.com/exercises/9e40881a)

```ruby
def move(n, from_array, to_array)
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']
```

## The Problem

 A SystemStackError occurs when the Ruby stack runs out of memory because of too many iterations. The stack "overflows" as it reaches its limit. The move method is a recursive method and a recursive method always needs a condition to stop iterating (a base case) and return a final value. However as written this method does not have such a thing. We can fix that by adding something like `return if n == 0` to the start of the method

```ruby
def move(n, from_array, to_array)
  return if n == 0
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']
```

## Further Exploration

If the length of the from_array is shorter than the value referenced by n, the to_array will be passed `nil` as many times as there are n - from_array size.

```ruby
def move(n, from_array, to_array)
  return if n == 0
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # => []
p done # => ["apply sunscreen", "go to the beach", "study", nil]
```

