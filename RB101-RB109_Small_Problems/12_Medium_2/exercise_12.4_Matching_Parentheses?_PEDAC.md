# Small Problems > Medium 2 > Matching Parentheses?

[Link to Problem](https://launchschool.com/exercises/f3d7f26e)

## The Problem

take a string with parentheses and return true if all of them have properly matched pairs or false otherwise

## P: Understand the Problem

**Input:** a string

**Output:** boolean true or false

### Explicit Requirements

- input will a string which contains letters and spaces and symbols
- no parentheses returns true (`balanced?('Hey!') == true`)
- proper number but wrong order returns false (`balanced?(')Hey!(') == false` )
- first parentheses must be (
- last parentheses must be )

## E: Examples and Test Cases

```ruby
balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false
```



## D: Data Structures

array of chars


## A: Algorithm

1. define a method takes one string argument
2. delete non () characters from string
3. convert string to an array of chars
4. return false if string starts with ) or ends with ( or has an odd number of chars
5. iterate over the array
6. find the index of the first ( and the first )
7. return false if not found or remove if found
8. at the end of the iteration if there are no () in the array return true else false

