# Exercise 4.9
def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  edited = string.downcase.gsub(/\W/, '')
  palindrome?(edited)
end

def real_palindrome2?(string)
  edited = string.downcase.chars.delete_if { |char| char =~ /\W/ }
  palindrome?(edited)
end

def real_palindrome3?(string)
  edited = string.downcase.chars.select { |char| char =~ /[[:alnum:]]/ }
  palindrome?(edited)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

p real_palindrome2?('madam') == true
p real_palindrome2?('Madam') == true           # (case does not matter)
p real_palindrome2?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome2?('356653') == true
p real_palindrome2?('356a653') == true
p real_palindrome2?('123ab321') == false

p real_palindrome3?('madam') == true
p real_palindrome3?('Madam') == true           # (case does not matter)
p real_palindrome3?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome3?('356653') == true
p real_palindrome3?('356a653') == true
p real_palindrome3?('123ab321') == false