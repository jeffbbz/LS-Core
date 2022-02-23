

1. A method that returns the sum of two integers

-----------------
Casual----->
-----------------

Given a set of two integers

- initalize a variable
- save the value of two passed integer arguments 
  added together to the variable
- return the saved value

-----------------
Formal----->
-----------------

START

Given a set of two integers called integer 1 and integer 2

SET sum_variable = integer 1 + integer 2
PRINT sum_variable

END

--------------------------------------------------------------------

2.  A method that takes an array of strings, and returns a string 
    that is all those strings concatenated together

-----------------
Casual----->
-----------------

Given an array of strings

- initalize a variable
- iterate through the array, concatenting the strings, save this result
  to the initilized variable
- return the concatenated string saved to the variable

-----------------
Formal----->
-----------------

START

Given an array of strings

SET new_string

WHILE interation <= size of array
  SET result of concatentation to new_string

PRINT new_string

END

--------------------------------------------------------------------

3.  A method that takes an array of integers, and returns a new 
    array with every other element from the original array, starting
    with the first element.

-----------------
Casual----->
-----------------

Given an array of integers

- initalize a a new empty array
- iterate over the original array passed to the method
- On each iterative pass if the index of the integer is even
  save the integer at that index to the new empty array
- return the new array

-----------------
Formal----->
-----------------

START

Given an array of integers

SET new_array = empty array
SET iterator = 1

While iterator <= length of array of integers
  IF index of integer is even
    SET new_array += integer
  ELSE do not add integer to new_array

  iterator = iterator + 1

PRINT new_array

END

--------------------------------------------------------------------

4.  A method that determines the index of the 3rd occurrence of a 
    given character in a string. For instance, if the given character 
    is 'x' and the string is 'axbxcdxex', the method should return 6 
    (the index of the 3rd 'x'). If the given character does not occur 
    at least 3 times, return nil. 

-----------------
Casual----->
-----------------

Given a string of characters

- Save the string to an array of string characters
- Iterate over the array to find if there are at least 3 occurances
  of desired character
- If there are three or more occurances, find the index of the 3rd
- Return index value of 3rd occurance

-----------------
Formal----->
-----------------

START

Given a string of characters

SET new_array = string as characters
SET iterator = 1

While iterator <= length of array of characters
  COUNT number of occurances of character
    IF occurances of character >= 3
      find index value of 3rd occcurance
      SET index_value = index of 3rd occurance
    ELSE 
      PRINT nil

  iterator = iterator + 1

PRINT index_value

END

--------------------------------------------------------------------

5.  A method that takes two arrays of numbers and returns the result 
    of merging the arrays. The elements of the first array should 
    become the elements at the even indexes of the returned array, 
    while the elements of the second array should become the elements 
    at the odd indexes.

-----------------
Casual----->
-----------------

Given two arrays of numbers

- Iterate over arrays 1 and 2
- Create new array from array 1
- Add elements form array 2 to the new array, at odd indexes
- Return new array

-----------------
Formal----->
-----------------

START

Given two arrays of numbers, array_1 and array_2

SET new_array = array_1
SET iterator = 1

While iterator <= length of array of characters of array_2
  ADD elements of array_2 to new_array
  IF index of element in new_array is even, skip
  ELSE ADD     

  iterator = iterator + 1

PRINT  new_array

END