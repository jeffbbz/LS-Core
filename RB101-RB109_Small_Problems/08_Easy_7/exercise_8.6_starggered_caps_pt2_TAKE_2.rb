def staggered_case_not_count_nonalpha(string)
  caps = false
  string.chars.map do |char|
    caps = !caps if char =~ /[A-Za-z]/
    caps ? char.upcase : char.downcase
  end.join
end

p staggered_case_not_count_nonalpha('I Love Launch School!') #== 'I lOvE lAuNcH sChOoL!'
p staggered_case_not_count_nonalpha('ALL CAPS') #== 'AlL cApS'
p staggered_case_not_count_nonalpha('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 nUmBeRs'

# # Further Exploration

# def staggered_case_count_nonalpha(string)
#   string.chars.map.with_index do |char, index|
#     index.even? ? char.upcase : char.downcase
#   end.join
# end

# def staggered_case(string, key)
#   if key == :count
#     staggered_case_count_nonalpha(string)
#   else
#     staggered_case_not_count_nonalpha(string)
#   end
# end

# p staggered_case('I Love Launch School!', :count) == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL CAPS', :nocount) == 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers', :count) == 'IgNoRe 77 ThE 444 NuMbErS'