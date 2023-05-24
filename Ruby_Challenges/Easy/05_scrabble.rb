# With Minimal Regex

class Scrabble

LETTER_SCORES = {
  1 => %w(A E I O U L N R S T),
  2 => %w(D G),
  3 => %w(B C M P),
  4 => %w(F H V W Y),
  5 => %w(K),
  8 => %w(J X),
  10 => %w(Q Z)
}

  def initialize(word)
    word = '' if invalid_word?(word) 
    @word = word.upcase
  end

  def score
    word.chars.map do |char|
      LETTER_SCORES.key(select_char_value_group(char))
    end.sum
  end

  def self.score(word)
    Scrabble.new(word).score
  end

  private

  attr_reader :word

  def invalid_word?(word)
    word.nil? || word.match(/ +\t+\n+/)
  end

  def select_char_value_group(char)
    LETTER_SCORES.values.select { |arr| arr.include?(char) }.flatten
  end
end

# With Regex

class Scrabble
  LETTER_SCORES = {
    /[aeioulnrst]/i => 1,
    /[dg]/i => 2,
    /[bcmp]/i => 3,
    /[fhvwy]/i => 4,
    /[k]/i => 5,
    /[jx]/i => 8,
    /[qz]/i => 10
  }

  def initialize(word)
    @word = word.to_s
  end

  def score
    LETTER_SCORES.each_with_object([]) do |(pattern, points), score|
      score << word.scan(pattern).size * points
    end.sum
  end

  def self.score(word)
    Scrabble.new(word).score
  end

  private

  attr_reader :word
end