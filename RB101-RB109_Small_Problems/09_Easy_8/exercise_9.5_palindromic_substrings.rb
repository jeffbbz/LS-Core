# Small Problems > Easy 8 > Palindromic Substrings

def leading_substrings(string)
  string.size.times.with_object([]) do |end_index, arr|
    arr << string[0..end_index]
  end
end

def substrings(string)
  string.size.times.with_object([]) do |start_index, arr|
    substring = string[start_index..-1]
    arr.concat(leading_substrings(substring))
  end
end

def palindromes(string)
  substrings(string).select do |substr| 
    substr == substr.reverse && substr.size > 1
  end
end

p palindromes('abcd') == []
p palindromes('madam') #== ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
p palindromes('Scaracs') #== ["carac", "ara"]