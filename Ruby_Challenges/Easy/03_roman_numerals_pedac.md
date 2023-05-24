### Goal

Convert decimal digits into roman numerals

### Rules

INPUT: Decimal Integer

OUTPUT: Roman numeral string

- RomanNumeral class
  - #to_roman method which takes no arguments and converts instance variable value to roman numeral strings
    - returns string
  - constructor method takes one integer argument on instantition
    - integer argument is integer to convert to roman numeral
    - stores integer to be converted in instance variable

- 1 => I
- 5 => V
- 10 => X
- 50 => L
- 100 => C
- 500 => D
- 1000 => M
- placing a lower letter to the left of a higher subtracts that value from the higher
  - V = 5, IV = 4
  - X = 10, IX = 9
  - L = 50, XLIX = 49 (XL = 40, IX = 9, 40_9, 49)
- placing a lower letter to the right of a higher adds value
- Each digit of a given decimal number is expressed individually, with the leftmost digit, moving right, skipping zero value digits
  - 1990 = MCMXC
    - 1000 = M
    - 900 = CM
    - 90 = XC
  - 2008 = MMVIII
    - 2000 = MM
    - 8 = VIII
- Over 3000 doesn't matter



### Data Structures

RomanNumeral Class

RomanNumeral Value Hash



### Algorithm

- RomanNumeral class

  - #to_roman method which takes no arguments and converts instance variable value to roman numeral strings
    - initialize an local variable to an empty string
    - iterate over the roman numeral hash keys and find the first key that is less than the given decimal to convert
    - add the roman numeral corresponding value to the string as many times as poss without going over
    - returns string

  - constructor method takes one integer argument on instantition
    - integer argument is integer to convert to roman numeral
    - stores integer to be converted in instance variable

- Roman Numeral Value Hash

  - main letter key, decimal value value

​	
