# Small Problems > Medium 2 > Longest Sentence

# My way, finding the count first and using it to find the longest

def longest_sentence(text)
  sentences = text.split(/(?<=[.!?])/).map(&:split)
  count = sentences.map(&:count).max
  longest = sentences.select { |sentence| sentence.count == count }
  puts longest.join(" ")
  puts count
end

# LS answer, finding the longest first then finding the count from that

def longest_sentence(text)
  sentences = text.split(/(?<=[.!?])/).map(&:split)
  longest = sentences.max_by(&:size)
  count = longest.size
  puts longest.join(" ")
  puts count
end

# Further Exploration with paragraph, keep delimiters, and words Words not working

def longest_sentence(text)
  paragraphs = text.split('  ').map(&:split)
  sentences = text.split(/(?<=[.!?])/).map(&:split)
  words = text.split.map(&:split)
  longest_paragraph = paragraphs.max_by(&:size)
  longest_sentence = sentences.max_by(&:size)
  longest_word = words.max_by(&:size)
  paragraph_count = longest_paragraph.size
  sentence_count = longest_word.size
  word_count = longest_word.size
  puts longest_paragraph.join(" ")
  puts paragraph_count
  puts longest_sentence.join(" ")
  puts sentence_count
  puts longest_word
  puts word_count
end

text = File.read('sample_text.txt')
text2 = File.read('franky.txt')

p longest_sentence(text)
p longest_sentence(text2)