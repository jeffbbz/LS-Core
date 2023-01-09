#Exercise 4.4

def multiply(num1, num2)
  num1 * num2
end

p multiply(5, 3) == 15

# Further Exploration:

p multiply([5, 3, 5], 3) == [5, 3, 5, 5, 3, 5, 5, 3, 5]

=begin
If the first of the arguments passed to the multiply method at invocation is an array,
the return value of the multiply method, which is the return value of line 4, 
will be a new array with the elements of the array passed as arguement multiplied
in number by the second argument. If the second is an array then it will raise an error.
=end