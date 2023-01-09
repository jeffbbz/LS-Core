# Small Problems > Easy 9 > Welcome Stranger

[Link to Problem](https://launchschool.com/exercises/16ab1e1f)

## The Problem



## P: Understand the Problem

**Input:** array of strings, hash of 2 KV pairs job symbol key and job name string value

**Output:** a string

### Requirements

- array will have 2 or more elements
  - elements will be strings
  - strings represent a name

- hash will have 2 kv pairs
  - keys will symbols representing jobs
  - values will be strings representing job titles

- we are returning not printing a string from the method
- need to access the strings in the hash and array and interpolate or concatentate them into a a greeting sentance string

## E: Examples and Test Cases

```ruby
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> "Hello, John Q Doe! Nice to have a Master Plumber around."
```

## D: Data Structures

array and hash and strings


## A: Algorithm

1. define a method to take one array argument and one hash argument
1. join the elements of the array into a single name string, elements separated by spaces
1. store reference to this string in local variable
1. join the values of the hash into a single job string elements seperated by spaces
1. store reference to this string in local variable
1. combine referenced strings into a single string with other greeting words
1. return string