#Exercise 9.6

stoplight = ['green', 'yellow', 'red'].sample

# p stoplight

case stoplight
when 'green' then puts "Go!"
when 'yellow' then puts "Slow down!"
else puts "Stop!"
end

# ----- or -----

case stoplight
when 'green'
  puts 'Go!'
when 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end