### Goal

Taking a letter input, output a diamond shape made of alpha chars of proper size according to requirements



### Rules

INPUT: capital alpha char

OUTPUT: strings in the shape of a diamond

- first and last rows are A
- all letters are capital
- A row only has one A, other rows have two of the letter
- row letters are in alphabetic order
- bottom half of diamond repeats top half in reverse order
- diamond is same height as length (square)



### Data Structures

Diamond Class

make_diamond class method

inner space # hash (letter key, number of spaces between letters value)

line length # hash (letter key, total line length)

alpha array (or just use range#step method?)



### Example

```plaintext
    A
   B B
  C   C
 D     D
E       E
 D     D
  C   C
   B B
    A
```

Size is 9 X 9

A -  Space Space Space Space A Space Space Space Space

B -  Space Space Space B Space B Space Space Space

C -  Space Space C Space Space Space C Space Space

D -  Space D Space Space Space Space Space D Space

E -  E Space Space Space Space Space Space Space E

inner spaces are odd increment - 0 1 3 5 7   

outer spaces are every number - 4 3 2 1 0



```plaintext
  A
 B B
C   C
 B B
  A
```

Size is 5 X 5

A -  Space Space  A Space Space

B -  Space B Space B Space

C -  C Space Space Space C

inner - 0, 1, 3

outer 2, 1, 0



### Algorithm

- make diamond method
  - takes on input
  - Create a range from A to input
  - find the max line size from the space # hash (spaces + 2)
  - iterate over the range
    - print A line with proper spaces and \n char (line length -1 /2 space then A then line length -1 /2)
    - for each other char:  
      - outer space is (total line length -2 and - inner space) /2 then letter then inner space (starts at 1 and increments by 2) then (total line length -2 and - inner space) /2
    - after last char reached. do the reverse



