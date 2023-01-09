#Exercise 4.10

def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true

def palindromic_number2?(num)
  num.digits == num.digits.reverse
end

p palindromic_number2?(34543) == true
p palindromic_number2?(123210) == false
p palindromic_number2?(22) == true
p palindromic_number2?(5) == true