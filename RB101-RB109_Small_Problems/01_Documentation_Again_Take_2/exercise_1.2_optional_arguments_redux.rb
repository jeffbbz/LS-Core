#Exercise 1.2

require 'date'

puts Date.civil

# will print: -4712-01-01

puts Date.civil(2016)

# will print: 2016-01-01

puts Date.civil(2016, 5)

# will print: 2016-05-01

puts Date.civil(2016, 5, 13)

# will print: 2016-05-03

# -------------------- #

# date is a class found in the standard library API docs. date::civil is a 
# class method which creates a date object denoting the given calendar year 
# with the following signature:

# civil([year=-4712[, month=1[, mday=1[, start=Date::ITALY]]]]) → date

# [] indicates that the args are optional as a doc convention (don't use in your code!)