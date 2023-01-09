# Small Problems > Easy 6 > Cute Angles

[Link to Problem](https://launchschool.com/exercises/054baaef)

## The Problem

write a method that takes a float representation of an angle and returns a string with degrees, minutes, seconds

## P: Understand the Problem

**Input:** a float number

**Output:** a string

- separated by ° for degree, ' for minutes, " for seconds

### Explicit Requirements

- String is separated like the above
- angles will be between 0 and 360
- minutes and seconds should be two digit numbers with leading 0s if necessary (03)
- degree = 60 minutes
- minute = 60 seconds

### Implicit Requirements

- there will be rounding of results

- ```ruby
  # degree symbol constant
  DEGREE = "\xC2\xB0"
  ```


## E: Examples and Test Cases

```ruby
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
```

## D: Data Structures




## A: Algorithm
1. write a method that takes one float argument
2. convert the float to degrees minutes and seconds and convert to string
   1. degrees: numbers to the left of the decimal are the degrees (76.00 = 76°)
      1. if number is an integer there will be no minutes and seconds
      2. convert integer to string and add degree sign
   2. minutes: multiply decimal by 60 and round off to whole number
      1. convert integer to string and add '
      2. if single integer append 0
   3. second: take the decimal from the minutes operation before rounding and multply by 60
      1. convert to string and add "
      2. if single integer append 0
   4. combine the three to one string
   5. return string