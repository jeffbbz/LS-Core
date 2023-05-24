### Goal

Take a word and a list of possible anagrams and returns a new list of words from the previous list which are the anagrams of the given word

### Rules & Requirements

INPUT: a word (string) and a list of words (array of strings)

OUTPUT: a list of words (array of strings)

- an anagram is a word that was created by re-arranging the letters of another word
  - ant => tan
  - master => maters, stream
- if the list contains no anagrams return an empty array
-  list can contain multiple (or no) anagram. return all anagrams in new array

- anagrams are case insensitive (location of upper and lower case doens't matter)

- anagrams must have same number of chars and not re-use letters which the original word did not.
- anagrams must not use letters less than number of times original word did

- an identical word (case insenstive) is NOT an anagram (do not include in list!)



### Data Structures

- Anagram Class
  - Constructor method
    - assigns string arg to instance var
  - #match instance method
    - takes an array of string as an argument
    - returns a new array of strings which are anagrams of the main word



### Algorithm

- Constructor Method
- Anagram#match
  - initialize local variable to empty array for anagrams
    - iterate over the argument list of words
    - for each word element:
      - check if word is same number of chars as given word
      - &&
      - word includes all chars of given word
    - if so then add word to anagrams array
  - return anagrams array
