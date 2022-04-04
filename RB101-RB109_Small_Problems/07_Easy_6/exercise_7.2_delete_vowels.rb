# Exercise 7.2

def remove_vowels(str_arr)
  str_arr.map do |string| 
    string.chars.map do |char|
      char.delete "aeiouAEIOU"
    end.join("")
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# or way simpler

def remove_vowels(str_arr)
  str_arr.map { |string| string.delete('aeiouAEIOU') }
end