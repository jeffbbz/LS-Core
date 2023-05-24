# Take 2

class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(list)
    list.select { |string| anagram?(string) && !same_string?(string) }
  end

  private

  def same_string?(string)
    string.downcase == word
  end

  def anagram?(string)
    string.downcase.chars.sort == word.chars.sort
  end

  attr_reader :word
end

# Take 1

class Anagram
  def initialize(word)
    @word = word.downcase
    @char_count = word.downcase.chars.tally
  end

  def match(list)
    list.select do |string|
      same_size?(string) && !same_string?(string) && same_chars?(string)
    end
  end

  private

  def same_size?(string)
    string.size == word.size
  end

  def same_string?(string)
    string.downcase == word
  end

  def same_chars?(string)
    word.chars.all? do |char| 
      string.downcase.count(char) == char_count[char]
    end
  end

  attr_reader :word, :char_count
end

# Take 3

class Anagram
  def initialize(word)
    @word = word.downcase
    @char_count = word.downcase.chars.tally
  end

  def match(list)
    list.select { |string| anagram?(string) }
  end

  private

  def same_string?(string)
    string.downcase == word
  end

  def anagram?(string)
    string.downcase.chars.tally == char_count && !same_string?(string)
  end

  attr_reader :word, :char_count
end