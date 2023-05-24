### Goal

Given an integer year and an integer month, return the yyyymmdd date of the nth x day of the week for that month and year

### Rules

Initial INPUTS: Integer year, integer month

Secondary INPUTS: day of the week string, nth descriptor (first, second etc..)

OUTPUT: A date object of yyyy mm dd

Example: Given the month march and year 2013, and the meetup day the first monday of that month, return the date object 2013, 3, 4

365 days in a year

12 months in a year

Days of the week : 'Monday'`, `'Tuesday'`, `'Wednesday'`, `'Thursday'`, `'Friday'`, `'Saturday'`, and `'Sunday'

- case insenstive
- day descriptors: 'first'`, `'second'`, `'third'`, `'fourth'`, `'fifth'`, `'last'`, and `'teenth'
- case insenstive
- if a date doesn't exist (no fifth thursday in november 2015) return nil

Date#wday - returns an integer of the day of the week from the range 0..6 where sunday is 0 and sat is 6

```
Date.new(2023, 5, 23).wday
=> 2
```

irb(main):004:0> Date::DAYNAMES
=> ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

### Data Structures

- Meetup Class
  - constructor method
  - day instance method



### Algorithm

- Constructor Method
  - takes two args
  - stores args in instance varibles
- day method
  - initialize a local variable to the first day of the month where the year and month are the same as those in the Meetup object
  - initialize a local variable to reference an array of dates which match the given weekday argument for that month (as calculated by find weekdays method)
  - pass the matched days of the week array and the given argument descriptor to the find descriptor method which returns a single date object or nil
  - return date object or nil
- find_weekdays method
  - initialize a local variable to the wday number of the given weekday argument (using calc wday. method)
  - initialize a local variable to the date of the last day of the month
    - one month after the date of month_start minus one day
  - step through the days of the month from start to end selecting each date that has the same wday number as our day local variable
  - return this array of dates
- calculate wdays method
  - find and return the index number that corresponds to the capitalized version of the given weekday string in the Date::DAYNAMES days of the week constant
- find descriptor method
  - make a case statement for the downcased version of the descriptor string
  - when 'first' then return the first element in the weekdays array
  - when 'second' then return the second element in the weekdays array
  - and so on until
  - when 'last' then return the last element in the weekdays array
  - else (teenths) return the return value of the find teenths method passed the weekdays array as arg
- find teenths method
  - find and return the first element of the weekdays array that returns true for the day of the date of the element is included in a range of integers from 13 to 19
