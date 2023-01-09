# Small Problems > Medium 2 > Longest Sentence

[Link to Problem](https://launchschool.com/exercises/5c3e3cf3)

## The Problem

find the longest sentence in a text and the number of words in that sentance

## P: Understand the Problem

**Input:** a text with many sentances

**Output:** the longest sentance string and the integer number of words

### Requirements

- sentances are words divided by spaces that end with . or ! or ?. anything that is not a space or sentance delimiter is a word.
- find the longest sentance
- find the number of words in that sentance

## E: Examples and Test Cases

```ruby
"Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.
  
Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure."

would split into

["Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.", "Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure."]
```

## D: Data Structures

array


## A: Algorithm

1. define a method that takes a string of text
1. split the text into an array of sentences divided at the delimiters . ! or ?
   1. use regex to split by the given characters
   1. Iterate over the array of sentances and split again into a nested array of words within sentances
   1. store a reference to this array in a variable
1. Find the count of words of the longest sentence
   1. iterate over the nested words array transforming each inner array sentence into a count of its words
   1. iterate over the array of count integers to find the maximum number
   1. store a reference to the maximum integer in a count variable
1. find the longest sentance
   1. iterate again over the words nested array, selecting the sentence array element whose count is == to the integer referenced by the count variable
   1. store a reference to this sentence in a longest variable
1. join the sentance array referenced by the longest variable back into a string and output to screen
1. output the integer referenced by the count variable to screen