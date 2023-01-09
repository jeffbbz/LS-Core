# Small Problems > Advanced 1 > Madlibs Revisited

[Link to Problem](https://launchschool.com/exercises/3dd7dd43)

## The Problem

create a madlib program that takes an external text and randomly selects appropriate words from lists of words, inserts them into the text, and outputs the resulting story

## P: Understand the Problem

**Input:** some text (strings)

**Output:** print to screen some text (strings)

### Requirements

- text should be an external source
- need replacement words grouped by nouns, verbs, adjectives, and adverbs
- replacements should be randomized

## E: Examples and Test Cases

```ruby
The %{adjective} brown %{noun} %{adverb}
%{verb} the %{adjective} yellow
%{noun}, who %{adverb} %{verb} his
%{noun} and looks around.
  
The sleepy brown cat noisily
licks the sleepy yellow
dog, who lazily licks his
tail and looks around.
```

- **adjectives**: quick lazy sleepy ugly
- **nouns**: fox dog head leg
- **verbs**: jumps lifts bites licks
- **adverb**: easily lazily noisily excitedly



## D: Data Structures

array or hash


## A: Algorithm

1. define a method that takes a text file
1. initalize a constant hash of arrays? with categories as keys and arrays of words as values
1. split the text into an array of words
1. randomly select words from approrpirate categories and insert into the text
1. output the text to screen