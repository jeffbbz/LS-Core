# Small Problems > Easy 5 > Bannerizer

[Link to Problem](https://launchschool.com/exercises/29ffd590)

## The Problem

Write a method that prints out a given argument string inside a box


## P: Understand the Problem
**Input:** string

**Output:** string within a graphical box

### Explicit Requirements
- print a string
- string will fit in terminal window
- method outputs the text


## E: Examples and Test Cases

```ruby
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+
```

## D: Data Structures

String


## A: Algorithm
1. define a method to take one string argument
2. initialize a variable to reference the value of the length of the string plus 2
3. output the top bar and first spacer line
   1. plus sign then as many dashes as the line length variable then plus sign
   2. bar sign with a space after then the argument string then a bar sign with a space before it
4. output the string
   1. bar sign then as many spaces as the line length variable then plus bar sign
5. output the bottom space line and bottom bar
   1. bar sign then as many spaces as the line length variable then plus bar sign
   2. plus sign then as many dashes as the line length variable then plus sign