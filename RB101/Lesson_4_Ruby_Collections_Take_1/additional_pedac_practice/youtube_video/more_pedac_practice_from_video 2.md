This is using https://www.youtube.com/watch?v=1_dWepaAg50

**1. The Problem**

Write a method that returns true if the string passed as an argument is a palindrome or false otherwise.

## P: Understanding the Problem
**Rules and Requirements**

- Input: string
- Output: boolean (true or false)

- Explicit Requirements:
  - Return true or false if string is a palindrome or not

- Implicit Requirements:
- All input will be string

- There will be a string argument given

>> Questions
1. Will the strings contain only word characters or also have integers, spaces, etc?
   1. If it contains those it is not a palindrome
2. What is a palindrome?
   1. string is the same forwards and backwards
3. Does capitalization matter?
   1. In this case yes. (Tacocat is not, tacocat is)
4. Will there be any empty strings?
   1. if so it is a palindrome

## E: Examples / Test Cases
**Examples**

- tacocat is a palindrome
- Tacocat is not 
- spaghetticat is not
- taco cat is not
- tac0cat is a palindrome
- taco.cat is not
- empty string is
- single letter is

## D: Data Structures
**Data Structure**

- a collection: string or an array

## A: Algorithm
**Algorithm**

1.  Create an array called "palindrome"
2.  Add string to array
    1.  split into array of characters
3.  Compare array to its reverse
    1.  Reverse array
    2.  compare with original string
        1.  if reverse is same return true if not return false

Actually Don't need to use an array. Can just use string
1. Reverse String
2. Compare reversed string to string
   1. True if same
   2. false if different


**2. The Problem**

Given a string, produce a new string with every other word removed.

## P: Understand the Problem
**Rules and Requirements**

- Input: a string (of words)
- Output: a string (with every other word removed)

- Explicit Requirements:
  - Remove every other (every second, every even numbered?) word from a string of words

>>Questions:
1. Are we returning a new string or the same string modified?
   1. New String
2. Are we removing starting with the first word or the second?
   1. Dunno but I did removing from second
3. Will there be empty strings?
   1. Sure, return ""
4. How to respond to one word strings?
   1. Just return word

## E: Examples/Test Cases
**Examples/Test Cases**

hat hand milk                 -> hat milk
branch march fungus dark rod  -> branch fungus rod
''                            -> ''
hat                           -> hat

## D: Data Structures
**Data Structure**

Array

## A: Algorithm
**Algorithm

1. Create empty array for every other word
2. iterate over string adding every other word to array
   1. Split into words
   2. add each word to other words array if the index is odd
3. convert collection into string
4. return string

**3. The Problem**

Given a string, produce a new string with all palindromes uppercased

## P: Understand the Problem
**Rules and Requirements**

- Inputs: a string
- Outputs: a new string

- Explicit Requirements:
  - Uppercase any and all palindromes found in a  given string
  - return new string with uppercased palindromes

>>Questions
1. Can there be more than one palindrome in a string?
2. Will there be strings without palindromes?
3. Do Spaces effect whether it is a palindrome?
4. Are there non-word characters and do they have any effect?
5. Will palindrome strings contain extraneous characters?

## E: Examples/Tests
**Examples**

- tacocat is a palindrome -> "TACOCAT"
- Tacocat is not          -> "Tacocat"
- taco cat is not         -> "taco cat"
- tac0cat is a palindrome -> "TAC0CAT"
- taco.cat is not         -> "taco.cat"
- empty string is   ''    -> ''
- single letter is 'a'    -> A 
- sifhmomiwp contains 1   -> aifhMOMiwp
- oipopwedadpo contains 2 -> oiPOPweDADpo


## D: Data Structures
**Data Structure**

Probably an array

## A: Algorithm
**Algorithm**

1. Convert string to an array of characters
2. 