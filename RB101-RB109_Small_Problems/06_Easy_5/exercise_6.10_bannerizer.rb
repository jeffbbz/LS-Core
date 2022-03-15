# Exercise 6.10

def print_in_box(string)
  string.delete_suffix!(string[76..-1]) unless string.size < 76
  border = "+#{'-' * (string.size + 2)}+"
  side = "|#{' ' * (string.size + 2)}|"
  puts border
  puts side
  puts "| #{string} |"
  puts side
  puts border
end

print_in_box('To boldly go where no one has gone beforeTo boldly go where no one has gone before.')
print_in_box('To boldly go where no one has gone before.')
print_in_box('')
