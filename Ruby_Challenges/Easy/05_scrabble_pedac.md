### Goal

Given a word, compute a scrabble score



### Rules

INPUT: String (a scrabble word)

OUTPUT: Integer (a score for the word)

- Each letter has a certain value
- multiples of the same letter score multiple times
- empty strings, nil, blank spaces score 0
- a non empty string may have 0.. chars
- each char has a value



### Data Structures

- Scrabble Class
  - constructor method takes one string arg and stores it in an instance variable
  - Scrabble#score instance method
    - takes not args
    - splits string into chars
    - matches chars to values
    - calculates sum
    - returns integer value sum
  - Scrabble::Score Method also returns score



### Algorithm

- create a hash with letter keys and score values
- Scrabble#score
  - initialize score variable to 0
  - check if string is whitespace, empty, or nil
    - return score varaiable if so
  - split string into array of chars
  - map each char of the array to its value in the letter hash
    - for each char, find the array which includes that char
    - return that array as a 1d array
    - return the key that corresponds to that value array
  - sum the array
  - return the sum

