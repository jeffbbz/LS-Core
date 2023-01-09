# Exercise 8.3

def word_cap(string)
  string.split.map { |word| word.capitalize }.join(" ")
end

# or

def word_cap(string)
  string.split.map(&:capitalize).join(" ")
end

# Further Exploration without String#capitalize

def word_cap(string)
  string = string.split.map do |word|
    word.start_with?("\"") ? word : word[0].upcase + word[1..-1].downcase
  end
  string.join(" ")
end

# or

def word_cap(string)
  chars_arr = string.split.map(&:chars)
  chars_arr.each { |element| element.first.upcase! }
  chars_arr.map(&:join).join(' ')
end

p word_cap('four score and seven') #== 'Four Score And Seven'
p word_cap('the javaScript language') #== 'The Javascript Language'
p word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'