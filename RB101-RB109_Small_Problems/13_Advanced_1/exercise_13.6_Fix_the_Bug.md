# Small Problems > Advanced 1 > Fix the Bug

[Link to Problem](https://launchschool.com/exercises/143443fd)

## The Problem

```ruby
def my_method(array)
  if array.empty?
    []
  elsif array.size > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([]) #== []
p my_method([3]) #== [21]
p my_method([3, 4]) #== [9, 16]
p my_method([5, 6, 7]) #== [25, 36, 49]

# Buggy Outputs:

# []
# nil
# nil
# nil
```

Fix the bug and explain it:

It appears that this method  wants to take an array argument and do one of three things. If the array is empty a new empty array should be returned. If an array only has one element then, a new array of that element times 7 should be returned. And otherwise if an array has more than one element a new array should be returned with the elements of the argument array transformed to their squared value.

However, the method is not working as intended because although the first call on line 13 is able to meet the first if condition on line 2, there is no elsif condition on line 4. Since there is no condition, the map call on lines 5-7 are interepreted by Ruby to be the elsif condition. Since the returned object of the map call is a new array and arrays are truthy, this elsif will always evalute to true. But there is nothing to execute when true so it executes `nil`

We can fix this by adding the appropriate elsif condition on line 4, such as checking if the array has more than 1 element with `array.size > 1` This is the easiest fix although we could also refactor the code as well.
