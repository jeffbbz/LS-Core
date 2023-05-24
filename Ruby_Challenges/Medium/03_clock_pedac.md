### Goal

Create a program that creates clock instances



### Rules

- clock instances should not be mutated. changing time instanitates new clock objects

- clock instance of the same time should be ==

- No built in date/time stuff

- add and subtract minutes

- clock has 24 hours

  - each hour is 60 mins
  - each min is 60 seconds

- TIme represented by strings of four digits and a ``:``-> `'08:00'`

- need to do some formating to turn `9` into `09` and etc

  

### Data Structures

- `Clock::at` method
  - takes one hour integer argument, one optional minutes integer argument, creates a new clock instance of that time
  - returns instance of clock class
- `Clock#time `
  - getter for `@time` instance variable.
- `#minutes?`
- `#hours?`
- `Clock#to_s` method returns a string rep of the time
  - instance method
- `Clock#-` method
  - takes minutes integer argument and subtracts from minutes of time to new clock object
  - called on instance
- `+` method same but plus
- `Clock#==`method
  - compares the time value of clock objects



### Thoughts

minutes in a day == 24 * 60 == 1440

1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 1 2 3 4 5



### Algorithm

`::at` method

- takes an hours arg and optional (default to 0) minutes arg
- instnatiates a new clock object
- sets @hours to hours and @minutes to minutes
- returns object



`#- method`

- 
