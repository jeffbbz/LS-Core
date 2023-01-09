# Small Problems > Medium 1 > Word to Digit

[Link to Problem](https://launchschool.com/exercises/753d4461)

## The Problem

Take a sentence string and return the same string modified with number words replaced by digit strings 

## P: Understand the Problem

**Input:** string

**Output:** same string

### Explicit Requirements

- return the same string modified not a new string
  
- replace 'one' with '1', 'two' with '2' etc
  
- use String#gsub!
  
- `/\b#{key}\b/`
  


## E: Examples and Test Cases

```ruby
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
```

## D: Data Structures

string and hash


## A: Algorithm

1. initialize a constant variable to reference a hash which maps each number word to its corresponding digit string ("zero" => "0", etc)
1. define a method to take one string argument
1. iterate over the hash keys
   1. find any instances that match the current key in the iteration
   1. replace them with the corresponding value from the hash
      1. do so in a mutating fashion
1. return the mutated string
