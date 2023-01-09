# Small Problems > Easy 2 > Mutation
[Link to Problem](https://launchschool.com/exercises/383b2769)

## Code

```ruby
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# Output:
# 	Moe
# 	Larry
# 	CURLY
# 	SHEMP
# 	Harpo
# 	CHICO
# 	Groucho
# 	Zeppo

# 	=> nil
```

## Take 1 - 03/04/2022

### Explanation

Why? Because although the arrays are different collections, elements they contain are references to the same String objects. So if the string objects are mutated then anywhere they are referenced will be affected. 

### Further Exploration

This could get you in trouble if you aren't careful. Manually declaring variables or passing duplicate variables might help solve this problem

## Take 2 - 10/04/2022

### Explanation

On line 3 when the `each` method is called on the array object referenced by local variable `array1`, a block is passed to the method as an arguement. On each iteration the method passes successive elements of the array collection to the block where they are assigned to the parameter `value`. In the block we see that each element referenced by the block local variable `value` is passed via the `shovel` method to the array object referenced by local variable `array2` (which was initialized on line 2). Now `array1` and `array2` both reference the same string objects and are essentially copies. Therefore, when the the mutating method `String.upcase!` is used on each element of the array object referenced by `array1` on line 4, the array itself is not being modified but the string objects that are elements in the array. The expression in the block on line 4 will permantly modify any strings starting with characters `C` or `S` so that the entire string is uppercase. When the array referenced by `array2` is passed to the `puts` invocation on line 5, it will output these modified (and other unmodified) strings as it references the same string objects.

### Further Exploration

This can get you into trouble if you are not careful because you may think you area only modifiying a certain array while your modifications might have broader effects accross your program that you did not desire. You can avoid this by paying careful attention to your code. You can also create an identical appearing array with identical appearing string object elements that are different objects:

```ruby
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
p array1[0].object_id # => 60
p array2[0].object_id # => 80
```
You can have string objects with the same value that are different objects. This of course will not work with integers:

```ruby
array1 = [1, 2, 3]
array2 = [1, 2, 3]
p array1[0].object_id # => 3
p array2[0].object_id # => 3
```
But integers are immutable anyway so its less of an issue.