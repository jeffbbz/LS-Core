# Small Problems > Easy 5 > Bannerizer

def print_in_box(string)
  string = string[0..75]
  line_length = string.length + 2

  puts "+" + "-" * line_length + "+"
  puts "|" + " " * line_length + "|"
  puts "| " + string + " |"
  puts "|" + " " * line_length + "|"
  puts "+" + "-" * line_length + "+"
end



print_in_box('To boldly go where no one has gone before.')
print_in_box('To boldly go where no one has gone before fsolgsijsoijalekwjlgiwjeogiwsdfdafadfahgrhr.')
print_in_box('Where are my gregs at?')
print_in_box('')
