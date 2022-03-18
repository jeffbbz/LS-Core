=begin

# What is PEDAC?
- Structured problem solving approach for programming problems
- Stands for:
  - P - Understanding the Problem
  - E - Examples and Test Cases
  - D - Data Structures
  - A - Algorithm
  - C - Implementing a Solution in Code


# What are its benefits?
- Helps you to be better in solving problems
  - Failure to meet requirements of the problem
  - Failure to handle edge cases appropriately
  - Failure to communicate your thought process
- Code with intent! Not hack-and-slash

# FAQ
- What if I don't need PEDAC?
  - Easier problems may be able to be solved without PEDAC
  - Harder problems will require a structured approach
- Can I modify the PEDAC template?
  - Ultimately used to help you solve the problem


# Implement a method that calculates the sum of the integers inside a string. Only positive integers will be tested. E.g. "L12aun3ch Sch3oo45l"

# PROBLEM
- input: string
- output: integer (sum)
- rules/requirements/objective:
add all the integers in the string to output a sum
only positive integers will be tested
- questions:
Will there be negative integers in the string? what would it look like. should we forcefully ignore these negative integers. There are no negative integers.
Should we return or output the sum? Return the sum
is it the summation of single digits? No, consecutive integers be considered as one number. 
"L12aun3ch Sch3oo45l" -> 63

# EXAMPLES
p sum_of_integers("HE2LL3O W1OR5LD") == 11
p sum_of_integers("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog") == 3635
p sum_of_integers("HELLO WORLD!") == 0
p sum_of_integers("HELLO WORLD77!") == 77

0 -> zero
O -> oh
1 -> one
l -> llama

# DATA STRUCTURES
- input: string
- intermed:
  Array of characters?

- output: integer

# Questions
- Do I need iteration?
- What kind of information do I need to perform the necessary task at each iteration?

# SCRATCHPAD
- Iterate over the array of characters, validate if it is an integer, and potentially create a sum and add to it
- How do we deal with consecutive integers?

# ALGORITHM/PSEUDOCODE

# Brenno

1.  Initialize a  hash including the string representation of numbers from" 0"-   "9" and pairing them with their integer value 0-9 (maybe it only needs to be an Array -- the hash actually seems unnecessary)

2. Split the string input into an array of characters

3. Iterate over the array of characters.

 3.1 Look for integers:  check whether the currrent character is an integer (is it included in the hash from step 1?) 
      3.1.1. If so, check whether the next element of the array is also an integer. If yes, juxtapose the element to the previous one. Add both to an array Integer_strings =[]. If no, go back to step 3.1 and iterate over the next element.
3.2. Once the iterations are over, we should have an array Integer=[] containing the string representation of all integers in the input string.
      
      4. Convert the string representations to integers
      
      5.  Sum each integer and return the sum.

# Jacob
# - split the string into an array of characters
# - iterate though the array 
#   - create an empty string
#   - check if the character is an integer
#     - if it is
#       - add the character to the empty string
#       - check to see if the next character is and integer
#         - if it is, add it to the same string
#         - if it's not, add the string to an array


# Paco
Given a string of characters potentially containing positive integers

- Convert a string of characters to an array of characters
- Iterate through the collection
  - create a a new empty collection for validated characters
  - for each iteration, compare the value to check if its an integer
  - if the value is an integer add it to the new array collection
    unless the next character in the index is also an integer then         concatenate any consecutive integers before adding 
  -  next if character is not a positive integer

  - after iterating through the original array of characters,
    return the value of the new collection

# Andrew
# store string.chars into an empty array
# Iterate over the array starting at index 0 for each element
# For each element evaluate if it is an integer or not
# If confirmed to be an integer, check the next element (index + 1) , 
# and perform same integer evaluation check (index +2) until non integer identified
# Concatenate the strings together
# Convert string to Integer and then add to sum variable
# Skip over (next) integers that have been address from previous iteration? (unclear how to do this)
# Return sum variable


# Raphael
# create a method that calcualtes the sum of intengers inside of a string

# create a method with one parameter(string)
# create an empty array to collect the integers out of the string
# create a each block to iterate over our argument to find the integers inside our array of
# strings and integers
# somehow be able to filter the dual numbers  also with our iteration
# and add the integers to our array possibly with the shovel method <<
# with the newly created array use the inject method to sum all the integer inside of it.

# Luke
- accept a str as argument
- create a sum and set it to 0
- create an empty string for the current number
- break the string apart and look at each character
  - if the character is a number
    - add it to the end of the current number
  - if the character is not a number
    - add the current number to sum
    - reset current number
- return the sum

=end

def sum_of_integers(string)
  sum = 0
  current_number = ''
  chars = string.chars
  chars.each do |char|
    if ('0'..'9').include?(char)    
      current_number << char
    else
      sum += current_number.to_i
      current_number = ''
    end
  end
  puts current_number
  sum # + current_number.to_i
end



# p sum_of_integers("HE2LL3O W1OR5LD") == 11
# p sum_of_integers("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog") == 3635
# p sum_of_integers("HELLO WORLD!") == 0
# p sum_of_integers("HELLO WORLD77!") == 77
p sum_of_integers("HELLO WORLD77") # == 77