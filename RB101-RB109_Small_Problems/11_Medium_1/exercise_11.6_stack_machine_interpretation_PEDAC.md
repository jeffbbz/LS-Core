# Small Problems > Medium 1 > Stack Machine Interpretation

[Link to Problem](https://launchschool.com/exercises/0f677535)

## The Problem

create a stack and register programming language to take simple string input commands and output results

## P: Understand the Problem

**Input:** string of substring string commands

**Output:** results of required operations printed to screen

###  Requirements

- input will be strings with command words and string reps of integers
- output will be integers numbers
- input of just a number puts that number in the register (no effect to stack)
- register stores only one value at a time
- storing something in the register removes the previous value (reg = 4, reg = 3)
- storing something in the stack places it on top of the other values (stack = [2, 5], stack = [2, 5, 7])
- stack can store many ordered values (like an array, last value is "top" of the stack)
- PUSH command keeps value in register and adds it to the stack
- ADD command pops last value from stack and adds it to the register value, result becomes register value
- SUB command pops last value from stack and subtracts it from the register value, result becomes register value
- MULT command pops last value from stack and multiplis it by the register value, result becomes register value
- DIV command pops last value from stack and divides the register value by it, result becomes register value
- MOD command pops last value from stack and divides the register value by it, and remainder of division becomes register value
- POP command pops last value from stack and stores it in the register
- PRINT outputs the register value to screen


## E: Examples and Test Cases

```ruby
minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)
```

## D: Data Structures

variables and an array plus multiple methods


## A: Algorithm

1. define a method that take a string argument
1. intialize a register variable to zero
1. initialize an empty array to be the stack
1. split the string argument into substring words
1. iterate through the substrings
6. check if string is integer or word
   1. if integer convert to integer and save to register
   2. if word perform appropriate action according to the command
   3. re-assign register variable per commands
   4. add to stack as per commands
   5. print out value of register (if print command given)
