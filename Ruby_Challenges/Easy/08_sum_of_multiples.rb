class SumOfMultiples
  def initialize(*set)
    @set = set.empty? ? [3, 5] : set
  end

  def to(num)
    (1...num).select do |number|
      multiple?(number)
    end.sum
  end

  def self.to(num)
    SumOfMultiples.new.to(num)
  end

  private

  attr_reader :set

  def multiple?(num)
    set.any? { |multiple| num % multiple == 0 }
  end
end

# or with Range#step

class SumOfMultiples
  def initialize(*set)
    @set = set.empty? ? [3, 5] : set
  end

  def to(num)
    set.each_with_object([]) do |multiple, multiples|
      (multiple...num).step(multiple) do |num| 
        multiples << num if !multiples.include?(num)
      end
    end.sum
  end

  def self.to(num)
    SumOfMultiples.new.to(num)
  end

  private

  attr_reader :set
end