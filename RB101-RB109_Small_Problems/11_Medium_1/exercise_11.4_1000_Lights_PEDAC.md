# Small Problems > Medium 1 > 1000 Lights

[Link to Problem](https://launchschool.com/exercises/753d4461)

## The Problem

take a n number of switches and return an array of which switches are on after n number of switch actions

## P: Understand the Problem

**Input:** integer 

​	- representing number of lights and switch actions

**Output:** an array of integer elements 

​	- representing the lights that are on at the end

### Explicit Requirements

- n will always be a positive integer?
- everything is off to start
- first pass everything is on (multiples of 1): [1, 2, 3, 4, 5] on
- second pass multiples of 2 (2, 4, 6...) are switched off, odds are on: [1, 3 ,5] on / [2, 4] off
  - in a 5 light setup only 2 and 4 where toggled
- third pass multiples of 3 (3, 6, 9...) are switched: [1, 5] on / [2, 3, 4] off
  - in a 5 light setup only 3 was toggled
- 4th pass: multiples of 4 (4, 8, 12...) are switched: [1, 4, 5] on / [2, 3] off
  - in a 5 light setup only 4 was toggled
  
- 5th pass: multipes of 5 (5, 10, 15) are swtiched: [1, 4] on / [2, 3, 5] off
  - in a 5 light setup only 5 was toggled

- so the result is [1, 4] the two lights left on

## E: Examples and Test Cases

```ruby
light_switches(2) == [1, 3, 5]
light_switches(5) == [1, 4]
light_switches(10) == [1, 4, 9]
```



[1, 2, 3, 4, 5]
[0]

[1, 3 ,5]
[2, 4]

[1, 5]
[2, 3, 4]

[1, 4, 5]
[2, 3]

[1, 4]
[2, 3, 5]



## D: Data Structures

array!


## A: Algorithm

1. define a method to take one integer argument
1. initialize two new empty arrays one for the off lights and one for the on lights
1. intialize a new range from 1 to the number of the integer argument and store it in a new variable number of swtiches
4. iterate from 1 up to number of swtiches times
   1. iterate over the array of all switches
   2. for each switch in the array check if it is a multiple of the current iterative number and is not already on
      1. if so then add it to the on array and 
      2. delete it from the off array
   3. for each switch in the array check if it is a multiple of the current iterative number and is already on
      1. if so then add it to the off array
      2. delete it from the on array
5. return the on array



or refactor:



1. define a method to take one integer argument
2. iterate over a range from 1 to the given integer
3. initialize a new empty array
4. iterate over a range from 1 to given integer from within the outer iteration
5. skip any switch that is not % of the outer range element = 0
6. if % = 0 and the switch is in the new array, delete the switch from the new array
7. if % = 0 and the switch is not in the array, add it to the array
8. repeat this argument number of times
9. return new array with on switches at the end

