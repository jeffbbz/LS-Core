# # Small Problems > Easy 7 > Staggered Caps (Part 1)

# # while loop

# def staggered_case(string)
#   index = 0
#   new_string = ""
#   while index < string.length
#     new_string << string[index].upcase if index.even?
#     new_string << string[index].downcase if index.odd?
#     index += 1
#   end
#   new_string
# end

# # or with times and with_index

# def staggered_case(string)
#   new_string = ""
#   string.length.times.with_index do |_, index|
#     new_string << string[index].upcase if index.even?
#     new_string << string[index].downcase if index.odd?
#   end
#   new_string
# end

# # with chars array, map, and with_index

# def staggered_case(string)
#   string.chars.map.with_index do |char, index|
#     index.even? ? char.upcase : char.downcase
#   end.join
# end

# p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'


# further exploration

# def staggered_case_further(string, start)
#   string.chars.map.with_index do |char, index|
#     if start == :down
#       index.even? ? char.downcase : char.upcase
#     else
#       index.even? ? char.upcase : char.downcase
#     end
#   end.join
# end

# p staggered_case_further('I Love Launch School!', :down) == "i lOvE LaUnCh sChOoL!"
# p staggered_case_further('ALL_CAPS', :up) == 'AlL_CaPs'
# p staggered_case_further('ignore 77 the 444 numbers', :up) == 'IgNoRe 77 ThE 444 NuMbErS'