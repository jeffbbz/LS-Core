# Small Problems > Debugging > Valid Series?

[Link to Problem](https://launchschool.com/exercises/e268eab0)

```ruby
def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count = 3 ? true : false
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series?([10, 6, 19, 2, 6, 4])             # should return false
```

## The Problem

A common error! It's easy to forget the second `=` when writing an equality comparison expression using the `==` method. Line 5 does this. Instead of `odd_count == 3` as the condition of the ternary operator , we have used assignement with `odd_count = 3`. This re-assigns the `odd_count` variable to reference `3` which is not only not what we want `odd_count` to reference, but will always evaluate to `true` rendering the ternary operator useless. If we use `odd_count == 3` then ruby will check if the expression evaluates to `true `(if odd_count does in fact equal `3`) then return `true` if the expression evalutes to `true` and `false` if not `false`.

```ruby
def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3 ? true : false
end
```

## Further Exploration

No, this ternary operator is not necessary as the `odd_count == 3` expression will evaluate to and also return` true` or `false` on its own. so we can shorten the code to:

```ruby
def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3
end
```

Which itself could be shortened to:

```ruby
def valid_series?(nums)
  return false if nums.sum != 47
  nums.count { |n| n.odd? } == 3
end
```

which could be shorten even further to:

```ruby
def valid_series?(nums)
  nums.count { |n| n.odd? } == 3 && nums.sum == 47
end

# or even

def valid_series?(nums)
  nums.count(&:odd?) == 3 && nums.sum == 47
end
```

