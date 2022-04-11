#Exercise 8.5

def staggered_case(string)
  index = 0
  result = ''

  string.each_char do |char|
    index.even? ? result << char.upcase : result << char.downcase
    index += 1
  end
  result
end

p staggered_case('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') #== 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 NuMbErS'

# Further Exploration: Example

def staggered_case(string, style)
  if style == 'down'
    result = ''
    need_upper = false
    string.chars.each do |char|
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    end
    result
  else
    result = ''
    need_upper = true
    string.chars.each do |char|
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    end
    result
  end
end

p staggered_case('I Love Launch School!', 'down') #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', 'up') #== 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', 'down') #== 'IgNoRe 77 ThE 444 NuMbErS'

# Further Exploration: Mine

def staggered_case(string, style)
  if style == 'down'
    index = 0
    result = ''

    string.each_char do |char|
      index.odd? ? result << char.upcase : result << char.downcase
      index += 1
    end
    result
  else
    index = 0
    result = ''
  
    string.each_char do |char|
      index.even? ? result << char.upcase : result << char.downcase
      index += 1
    end
    result
  end
end

p staggered_case('I Love Launch School!', 'down') #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', 'up') #== 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', 'down') #== 'IgNoRe 77 ThE 444 NuMbErS'