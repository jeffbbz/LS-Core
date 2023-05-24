ROMAN_NUMERAL_VALS = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}

class RomanNumeral
  def initialize(decimal_num)
    @decimal_num = decimal_num
  end

  def to_roman
    roman = ""
    decimal = decimal_num
    while decimal > 0
      key = ROMAN_NUMERAL_VALS.keys.sort.reverse.detect { |k| k <= decimal }
      roman << ROMAN_NUMERAL_VALS[key] * (decimal / key)
      decimal -= key * (decimal / key)
    end
    roman
  end

  private

  attr_accessor :decimal_num
end
