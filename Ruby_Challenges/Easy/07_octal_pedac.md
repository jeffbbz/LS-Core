### Goal

Given an string representation of an octal number input, return its decimal equivalent as an integer



### Rules

INPUT: String

OUTPUT: Integer

- Decimal numbers are found by multiplying each digit by 10 to the n power where n starts at 0 and increases by one from right to left of the digits, then adding them.
- nth digit is 10 to the n-1 power
- Octact is the same but with 8
- 233 in decimal
- 2 3 3
- `2*10^2` + `3*10^1` + `3*10^0` or also `2*100` + `3*10` + `3*1`
- in octal
- 2 3 3
- `2*8^2` + `3*8^1` + `3*8^0` or also `2*64` + `3*8` + `3*1`

- some number to the power of 0 is 1

- do not use any built in conversion methods
- invalid input returns 0
  - non numbers are invalid
  - any number with 8 or 9 is invalid (not an octal number)



### Data Stuctures

- Octal Class
  - constructor method
  - take one string argument
  - stores it in an instance variable

- to_decimal instance method
  - returns zero if non valid octal number
  - converts octal number to decimal number
  - returns integer
- validation helper method?
  - checks if valid octal
    - does not include 8 or 9
    - is a number



### Algorithm

- to_decimal
  - if invalid octal return 0
  - convert string to integer
  - convert integer to reverse array of digits 
  - iterate over the array multiplying each digit by 8 to the incrementing by one power starting with 0 (corresponding to the index of the digit)
  - sum the array
  - return the sum
- validation
  - check if string includes 8 or 9
  - check if string includes a-z or A-Z
  - if these things are true then return true (for invalid)
