# my solution with a nested array

def block_word?(word)
  blocks = [
    ['B', '0'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], 
    ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'], 
    ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'], ['Z', 'M']
  ]
  word.upcase.chars.each do |char|
    blocks.each { |block| block.delete(char) }
  end
  blocks.all? { |block| !block.empty? }
end

# kind wierd way

def block_word?(word)
  blocks = [
    ['B', '0'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], 
    ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'], 
    ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'], ['Z', 'M']
  ]
  word.upcase.chars.each_with_object([]) do |char, arr|
    arr << blocks.all? do |block| 
            block.delete(char)
            !block.empty?
           end
  end.none?(false)
end

# with a constant array of string pairs

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

def block_word?(word)
  blocks = BLOCKS.dup
  word.upcase.chars.each do |char|
    blocks.map! { |block| block.delete(char)}
  end
  blocks.all? { |block| !block.empty? }
end

# LS Solution

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(word)
  word = word.upcase
  BLOCKS.none? { |block| word.count(block) == 2}
end

p block_word?('BATCH') #== true
p block_word?('BUTCH') #== false
p block_word?('jest') #== true