# Small Problems > Medium 1 > Word to Digit

WORD_TO_DIGIT = {
  "zero" => "0",
  "one" => "1",
  "two" => "2",
  "three" => "3",
  "four" => "4",
  "five" => "5",
  "six" => "6",
  "seven" => "7",
  "eight" => "8",
  "nine" => "9"
}

def word_to_digit(string)
  WORD_TO_DIGIT.each_key do |key|
    string.gsub!(/\b#{key}\b/, WORD_TO_DIGIT[key])
  end
  string
end 

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'