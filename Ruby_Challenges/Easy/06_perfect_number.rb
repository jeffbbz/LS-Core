class PerfectNumber
  def self.classify(num)
    raise StandardError, "Input must be positive integer" if num < 1

    if calc_aliquot(num) == num
      'perfect'
    elsif calc_aliquot(num) > num
      'abundant'
    else
      'deficient'
    end
  end

  class << self
    private

    def calc_aliquot(num)
      (1...num).each_with_object([]) do |number, divisors|
        divisors << number if num % number == 0
      end.sum
    end
  end
end
