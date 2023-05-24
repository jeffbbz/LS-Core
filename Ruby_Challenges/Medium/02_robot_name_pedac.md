### Goal

Create a program that creates a random name for a robot and can also reset that name and does not have duplicate names across different robots



### Rules

INPUT: New Robot class object instantiation.

OUTPUT: robot object with random name

INPUT: call name getter for robot

OUTPUT: return robot name which was randomly generated and different than other robot names.

- upon instanation robots objects are nameless
- upon calling the name getter, random name generated
- names should not be repeated
- names can be reset by calling Robot#reset method
  - reset names are newly non repeated random generations
- use kernel.srand and seed numbers to do all this
- need a way to remember what names have been made



### Examples/Tests

- Robot class
- Robot#name, Robot#reset methods,
- Initial Seed constant (1000), different seed constant (1234)
- name regex constant: `/^[A-Z]{2}\d{3}$/`
  - names should be:
  - start with two uppercase alpha chars (`rand(100)` converted to string?)(sample from upppercase alpha range array?)
  - end with 3 digit chars (`rand(1000)`)
  - ex: RT342



### Data Structure

- Robot Class
- Robot#name instance method
- Robot# reset instance method
- @@used_names class variable
- INITIAL SEED constant
- DIFFERENT SEED constant
- NAME_REGEX name pattern constant



### Algorithm

- Robot#name
  - return the @name if it exists
  - Call Kernel#srand and pass it the initial seed to generate a random number
  - call ALPHA.sample(2) to return an array of randomly sample chars
    - join array into single string 
  - call kernel#rand(1000) to generate a random 3 digit number
    - convert digits to string
  - concat alpha string and digit string
  - store in instance variable and return string value from method

- Robot#reset
