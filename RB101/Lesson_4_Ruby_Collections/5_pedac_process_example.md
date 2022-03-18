# The PEDAC Process

## P: Understanding the Problem

- Establish rules/define boundaries of the problem
  - Assess available information
  - Restate Explicit requirements
    - requirements clearly stated in the problem
  - Identify Implicit requirements
    - Can be extrapolated from the problem
- Don't rush this step!!

  **General Example**

  Problem: Given a string, produce a new string with every other word removed.

  - Explicit requirements:
    - Input: string
    - Output: new string
    - Remove every other word from input string

  - Questions:
    - What do we mean by every other word?
    - How do we define a word in this context?
      - Words are delimited by spaces

## E: Examples / Test Cases

- Can confirm/refute assumptions
- Help answer questions about implicit requirements
- Act as assertions which help to codify rules and boundaries

## D: Data Structures

- Help us reason with data logically
- Help us interact with data at an implementation level
- Thinking in terms of data structures is part of the problem solving process
- Data Structures are closely linked to algorithms
  - Algorithms are a set of steps from input to output
    - This involves structuring data in a certain way

## A: Algorithms

- A logical sequence of steps for accomplishing a task or objective
  - Closely linked to data structures
  - Series of steps to structure the data to produce the required output

- Stay abstract and high level
  - Avoid implementation details (references to particular methods or built in functions)
  - Use plain words (no code or even formal Pseudo Code)
    - Keeping abstract at this stage, helps you not get locked into an approach or way of thinking
    - Okay to revisit during implementation to update

## C: Implementing a solution in Code

- Translating your solution algorithm into an actual programming language
- Think about the algorithm in the context of the chosen programming language
  - Language features and constraints
  - Characteristics of data structures
  - Built-in methods/functions
  - Syntax and coding patterns
- Create test cases (if necessary/not provided)
- Code with intent (IMPORTANT!)
  - What is each line of code doing and why are we doing it
  - How does it apply to our solution

## --------------------------------

## Actual Problem: Sum Even Number Rows

Imagine a sequence of consecutive integers beginning with 2. The integers are grouped in rows, with the first row containing on integer, the second row two integers, the third row three integers, and so on. Given an integer representing the number of a particular row, return an integer representing the sum of all the integers in that row.

**Rules and Requirements**

- There is a sequence of even integers
- Sequence begins with the integer 2
- Integers are consecutive
- Sequence is grouped into rows
- Each row is incrementally larger than previous row: 1 integer, 2 integers, 3 integers...
- Row 'number' will equal the number of elements in the row
  - Row 1 has 1 element, Row 2 has 2 elements...
- Input: single integer (which identifies a row, which is a subset of a sequence of integers)
- Output: single integer (sum of all integers in a row, identified by the input integer)

- Sequence:

2, 4, 6, 8, 10, 12, 14, 16, 18, 20...

Row 1   ->    2
Row 2   ->    4, 6
Row 3   ->    8, 10, 12
Row 4   ->    14, 16, 18, 20
...

- How do we create this structure?
  - Can't necessarily hardcode because we don't know what the input will be
  - Need to create as we need based on input

**Examples**

row number: 1 --> sum of integers in row: 2
row number: 2 --> sum of integers in row: 10
row number: 4 --> sum of integers in row: 68

2                 -->  2
4, 6              -->  10
14, 16, 18, 20    -->  68

**Data Structure**

2
4, 6
8, 10, 12
14, 16, 18, 20
...

- Overall structure represents a sequence as a whole
- Within overall, individual rows
- Individual rows are in a set order in context of sequence
- Individual rows contain integers
- Can assume that integers are in a set order in context of sequence.

- Nested Array seems natural here:

[
  [2],
  [4, 6],
  [8, 10, 12],
  [14, 16, 18, 20],
  ...
]

Calculating the start integer:
Rule: First integer of row == last integer of preceding row + 2
Algorithm:
1. Get last row of the rows array
2. Get last integer of row
3. Add two to that integer
4. 

**Algorithm**

1. Create an empty "rows" array to contain all rows
2. Create a row array and add it to the rows array (see Problem)
3. Repeat step two until we've created all needed rows as defined by input value
   1. All rows have been created when length of array is equal to input integer
4. Sum final row
5. Return the sum

Note:
  If a step is complex and might require a lot of sub-steps, might be good to extract to
  a separate problem of its own. (For Example Step 2):

  *Problem: Step 2 Create a Row*

  Rules: 
  - Row is an array
  - Array contains integers
  - Integers are consecutive even numbers
  - Integers in each row are part of a larger overall sequence
  - Rows are of different lengths

  - Input: The information needed to create the output:
    - The starting integers for the row
    - The length of the row
  - Output: The row itself: '[8, 10, 12]'

  Examples:
  start: 2, length: 1 --> [2]
  start: 4, length: 2 --> [4, 6]
  start: 8, length: 3 --> [8, 10, 12]

  Data structures: 
  - An array of integers

  Algorithm:
  1. Create an empty row array to contain the integers
  2. Add the starting integer
  3. Increment the starting integer by 2 get the next integer in sequence
  4. Repeat steps two and three until the array has reached the correct length
  5. Return the row array

## Final Thoughts

- Don't think of PEDAC as completely linear
  - Approach in order at first, but move back  and forward as needed between steps
- Switch from implementation back to abstract problem solving when needed
- Don't try to problem solve at code level