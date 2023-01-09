
This example is use the class method [`Date::civil`](https://docs.ruby-lang.org/en/3.1/Date.html#method-c-civil)

`Date::civil` creates a date object with given dates passed in as arguments. It does the same thing as `Date::new`. The arguments are optional, but necessary if you want to choose a date.

```ruby
require 'date'

puts Date.civil
# Outputs: -4712-01-01
# This is using all defaults as there were no arguments passed in. 4713 BC/-4712 is year one of the julian calendar.

puts Date.civil(2016)
# Outputs: 2016-01-01
# As only the year was passed in as argument, the rest of the date is defaults

puts Date.civil(2016, 5)
# Outputs: 2016-05-01

puts Date.civil(2016, 5, 13)
# Outputs: 2016-05-13
```