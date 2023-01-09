# Exercise 7.2

def remove_vowels(string_arr)
  string_arr.map { |word| word.gsub(/[aeiouAEIOU]/, "") }
end

# or

def remove_vowels(string_arr)
  string_arr.map { |word| word.delete('aeiouAEIOU') }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


