class Octal
  def initialize(octal)
    @octal = octal
  end

  def to_decimal
    return 0 if invalid?(octal)
    reverse_digits = octal.to_i.digits
    reverse_digits.map.with_index { |digit, power| digit * (8 ** power)}.sum
  end

  private

  attr_reader :octal

  def invalid?(number)
    #number.match?(/(8+|9+|[a-z])/i)
    number.match?(/[^0-7]/)
  end
end