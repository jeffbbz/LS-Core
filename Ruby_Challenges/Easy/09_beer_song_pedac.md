### Goal

Given an integer input, output a string verse of the song 99 bottles with the input number of bottles on the wall and input -1 left.

### Rules

INPUT: An integer or group of integers

OUTPUT: a string or multiple strings

- verses from 99 to zero
- 3..99 : n number of beers ont he wall, n-1 left on the wall
- 2 : 2 beer on one, singular 1 bottle of beer left
- 1 : 1 singlular bottle beer on wall, no more beer on wall
- 0 : no more bottles of beer, buy some more get 99 bottles again
- input can be a single or multiple integers from 0..99
- class method that outputes a verse or verses
- class method that outputs all the lyrics
- class variable? or contant? that holds one verse from 3-99, one verse for 1, one for zero, one for 2



### Data Structures

BeerSong class

- verse class method
  - takes 1- n arguments
  - outputs n number of verseses changes according to input numbers
- lyrics class method
  - outputs entire song
- 4 Class Variables: song for 2..99, song for 2, 1, 0



### Algorithm

- Verse Class Method
  - initialize local variable to store array of verse numbers
  - iterate over the array
    - pass the string(s) to a new array
    - concanetate and return the strings
