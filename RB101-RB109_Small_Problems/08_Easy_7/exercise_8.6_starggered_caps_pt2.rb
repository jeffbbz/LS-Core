def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper if char =~ /[A-Za-z]/
  end
  result
end

p staggered_case('I Love Launch School!')# == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS')# == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers')# == 'IgNoRe 77 ThE 444 nUmBeRs'

# Further Exploration

def staggered_case(string, choice)
  result = ''
  need_upper = true
  
  if choice == 'ignore'
    string.chars.each do |char|
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper if char =~ /[A-Za-z]/
    end
  else
    string.chars.each do |char|
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    end
  end
  result
end

p staggered_case('I Love Launch School!', 'ignore')# == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS', 'ignore')# == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers', 'do')# == IgNoRe 77 ThE 444 NuMbErS'