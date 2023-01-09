# Small Problems > Easy 9 > Group Anagrams

def same_chars?(chars_arr, index1, index2)
  chars_arr[index1].difference(chars_arr[index2]).empty?
end

def anagram(words)
  anagrams = []
  chars = words.map(&:chars)
  check_index = 0
  
  loop do
    break if check_index >= words.length
    match_index = 0
    grouping = []
    
    loop do
      break if match_index >= words.length
      grouping << chars[match_index].join if same_chars?(chars, check_index, match_index)
      match_index += 1
    end
    
    anagrams << grouping unless anagrams.include?(grouping)
    check_index += 1
    
  end
  anagrams.each { |grouping| p grouping }
end

# slightly shorter refactor with while and each with index

def same_chars?(chars_arr, index1, index2)
  chars_arr[index1].difference(chars_arr[index2]).empty?
end

def anagram(words)
  anagrams = []
  chars = words.map(&:chars)
  check_index = 0
  
  while check_index < words.length
    grouping = []
    chars.each_with_index do |char, index|
      grouping << chars[index].join if same_chars?(chars, check_index, index)
    end
    anagrams << grouping unless anagrams.include?(grouping)
    check_index += 1
  end
  anagrams.each { |grouping| p grouping }
end

# refactor with times with object and each with index and sort

def anagram(words)
  chars = words.map { |word| word.chars.sort }
  words.length.times.with_object([]) do |i, anagrams|
    grouping = []
    chars.each_with_index do |arr, index|
      grouping << words[index] if chars[i] == chars [index]
    end
    anagrams << grouping unless anagrams.include?(grouping)
  end.each { |grouping| p grouping }
end

# LS answer with hash 

def anagram(words)
  words.each_with_object({}) do |word, result|
    key = word.split('').sort.join
    if result.has_key?(key)
      result[key].push(word)
    else
      result[key] = [word]
    end
  end.each_value { |v| p v }
end

# With Enumerable#group_by and # chars.sort

def anagram(words)
  words.group_by { |word| word.chars.sort }.each { |_, value| p value }
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

anagram(words)




