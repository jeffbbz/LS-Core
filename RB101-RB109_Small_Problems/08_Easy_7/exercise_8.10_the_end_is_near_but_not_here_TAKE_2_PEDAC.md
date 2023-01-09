# Small Problems > Easy 7 > The End Is Near But Not Here

[Link to Problem](https://launchschool.com/exercises/8332cd47)

## The Problem

take a given string and return the second to last word in the string

## P: Understand the Problem

**Input:** string of at least two words

**Output:** string of one word

### Explicit Requirements

- take a sentance string with word substrings and return the second to last word
- words are multiple nonblank charactesr in a row
- input string will have at least two words


## E: Examples and Test Cases

```ruby
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'
```

## D: Data Structures

array


## A: Algorithm

1. define a method to take one string argument
1. convert the string to an array of word elements
1. return the second to last element of the array (index -2)



or



1. insane version without using an array
2. find the index of the last " " substring in the string
3. initialize a variable to reference the that index
4. initialize a variable to reference the index of the last substring in the string 
   1. the length of the string - 1
5. initialize a variable to find the reverse index of the last " " substring in the string
   1. subtract the the the return value of step 4 by step 2/3
   2. make it negative
   3. subtract by one
6. initialize  a variable to reference the " " substring preceding the second to last word of the string
   1. look for the " " starting at the index value of the last space - 1
7. if step 6 returns nil, there is only one " " in the string, thus the string is two words
   1. return the substring found from index 0 to the reverse last space index - 1
8. else return the substring found from the second to last space + 1 until the reverse last space - 1

