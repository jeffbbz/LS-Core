# Small Problems > Medium 2 > Lettercase Percentage Ratio

[Link to Problem](https://launchschool.com/exercises/e0500589)

## The Problem

take a string and return a hash with three entries: percentage of lowercase letters, precentage of uppercase, and percentage of niether

## P: Understand the Problem

**Input:** string

**Output:** hash with three key value pairs

### Requirements

- string will always contain at least one character
- find and count lowercase letters
- find and count uppercase letters
- and count the rest
- count all characters
- then find the percentages of each type of character
- hash will be symbols and integers


## E: Examples and Test Cases

```ruby
letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
```

## D: Data Structures

string and hash


## A: Algorithm

1. write a method that takes a string as an argument
1. create a hash with three symbol keys (lowercase, uppercase, neither) and 0 for all values
1. count the charactesrs in the string and store the return value to a variable
1. iterate over the string counting the lowercase letters then divide the return value as a float by 10 and multiply by 100 then update the lowercase value of the hash with the result
1. iterate over the string counting the uppercase letters then divide the return value as a float by 10 and multiply by 100 then update the uppercase value of the hash with the result
1. subtract the lower + upper from the total string chars and then divide the return value as a float by 10 and multiply by 100 then update the neither value of the hash with the result
1. return the hash
