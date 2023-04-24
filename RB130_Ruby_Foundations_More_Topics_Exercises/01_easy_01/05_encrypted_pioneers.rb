=begin

### Goal:

Take a list of encrypted names, decrypt them, then print them unecrypted

### Rules:
INPUT: Array of Encrypted names
OUTPUT: printed to console array of uncrypted names
- input and output lists are lists of strings
- only alpha chars are encrypted
- encryption is ROT13
  - each letter is rotated 13 chars to the right
    A -> N, B -> O
- Lowercase and upcase use the same style
    a -> n, b -> o
- non-alpha chars are unencrypted
- spaces are unencrypted
- case matters for return!

### Initial Thoughts
- create an array of names
- create new empty array for results
- create a hash of encrypted letter key and decrypted letter value 
- iterate over each string
  - skip char if not alpha char
  - else find char in hash and replace with value
  - save to new results array
- Output new results array elements to console

### Data Structures:
Hash and Arrays

### Algorithm:
1. Create an Encrypted Pioneers Constant with each string as an element
2. Create a hash with encrypted letter key and decypted letter value
  - { 'A' => 'N', 'B' => 'O'}
3. Create an empty results array
4. Iterate of the pioneers constant mapping to new array of strings
  - Next char if not alpha char
  - if char is upcase then find key in hash and swap with value
  - if char is downcase, then find upcase of char as key and swap with downcase of value
5. Iterate over results array outputing each string
=end

# with Alpha Hash

ENCRYPTED_PIONEERS = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unvog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
]

DECODER = {
  'A' => 'N',
  'B' => 'O',
  'C' => 'P',
  'D' => 'Q',
  'E' => 'R',
  'F' => 'S',
  'G' => 'T',
  'H' => 'U',
  'I' => 'V',
  'J' => 'W',
  'K' => 'X',
  'L' => 'Y',
  'M' => 'Z',
  'N' => 'A',
  'O' => 'B',
  'P' => 'C',
  'Q' => 'D',
  'R' => 'E',
  'S' => 'F',
  'T' => 'G',
  'U' => 'H',
  'V' => 'I',
  'W' => 'J',
  'X' => 'K',
  'Y' => 'L',
  'Z' => 'M'
}

decrypted = ENCRYPTED_PIONEERS.map do |name|
              name.chars.map do |char|
                if char.match?(/[[:alpha:]]/)
                  if char == char.upcase
                    char.replace(DECODER[char])
                  else
                    char.replace(DECODER[char.upcase].downcase)
                  end
                else
                  char
                end
              end.join
            end

decrypted.each {|name| puts name }

# with String#ord and String#chr

ENCRYPTED_PIONEERS = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unvog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
]

def decrypt_rot13(encrypted_string)
  encrypted_string.chars.map do |char|
    case char
    when 'a'..'m', 'A'..'M' then (char.ord + 13).chr
    when 'n'..'z', 'N'..'Z' then (char.ord - 13).chr
    else                         char
    end
  end.join
end

ENCRYPTED_PIONEERS.each { |name| puts decrypt_rot13(name) }

# With an ALPHA array and Array Indexing

ENCRYPTED_PIONEERS = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unvog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
]

ALPHA = ('a'..'z').to_a + ('A'..'Z').to_a

def decrypt_rot13(string)
  string.chars.map do |char|
    case char
    when 'a'..'m', 'A'..'M' then ALPHA[ALPHA.index(char) + 13]
    when 'n'..'z', 'N'..'Z' then ALPHA[ALPHA.index(char) - 13]
    else                         char
    end
  end.join
end

ENCRYPTED_PIONEERS.each { |name| puts decrypt_rot13(name) }