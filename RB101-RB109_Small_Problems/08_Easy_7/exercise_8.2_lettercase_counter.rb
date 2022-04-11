# Exercise 8.4

def letter_case_count(string)
  count = Hash[lowercase: 0, uppercase: 0, neither: 0]
  
  string.chars.each do |char|
    if ('a'..'z').cover?(char.to_s)
      count[:lowercase] += 1
    elsif ('A'..'Z').cover?(char.to_s)
      count[:uppercase] += 1
    else
      count[:neither] += 1
    end
  end
  count
end

p letter_case_count('abCdef 123') #== { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') #== { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') #== { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') #== { lowercase: 0, uppercase: 0, neither: 0 }

# or example answer sorta

def letter_case_count(string)
  count = Hash.new
  chars = string.chars
  count[:lowercase] = chars.count { |char| char =~ /[a-z]/}
  count[:uppercase] = chars.count { |char| char =~ /[A-Z]/}
  count[:neither] = chars.count { |char| char =~ /[^A-Za-z]/}
  count
end

p letter_case_count('abCdef 123') #== { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') #== { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') #== { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') #== { lowercase: 0, uppercase: 0, neither: 0 }

# or other student answer

def letter_case_count(string)
  {
    lowercase: string.count('a-z'),
    uppercase: string.count('A-Z'),
    neither: string.count('^A-Za-z')
  }
end

p letter_case_count('abCdef 123') #== { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') #== { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') #== { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') #== { lowercase: 0, uppercase: 0, neither: 0 }
