# Exercise 8.3

def word_cap(string)
  string.split.map { |word| word.capitalize }.join(' ')
end

p word_cap('four score and seven') #== 'Four Score And Seven'
p word_cap('the javaScript language') #== 'The Javascript Language'
p word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'

# or

def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven') #== 'Four Score And Seven'
p word_cap('the javaScript language') #== 'The Javascript Language'
p word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'


# NOTES: 
# (&:method_name) is shorthand notation for { |item| item.method_name }
# so map(&:capitalize) is the same as map { |word| word.capitalize }
# We can use this shorthand syntax with any method that has no required arguments.

# Further Exploration 1 without String#capitalize

def word_cap(string)
  words = string.split.map(&:chars)
  words.map { |element| element.first.upcase! }
  words.map(&:join).join(' ') 
end

p word_cap('four score and seven') #== 'Four Score And Seven'
p word_cap('the javaScript language') #== 'The Javascript Language'
p word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'
