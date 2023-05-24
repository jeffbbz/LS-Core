# with Enumerable#each_cons

class Series
  def initialize(string)
    @string = string
  end

  def slices(length)
    raise ArgumentError, "Slice too big!" if length > string.size

    digits = string.chars.map(&:to_i)
    digits.each_cons(length).map {|cons| cons }
  end

  private

  attr_reader :string
end

# without each_cons

class Series
  def initialize(string)
    @string = string
  end

  def slices(length)
    raise ArgumentError, "Slice too big!" if length > string.size

    digits = string.chars.map(&:to_i)
    digits.each_with_object([]).with_index do |(_, slices), index| 
      slice = digits[index, length]
      slices << slice if slice.size == length
    end
  end

  private

  attr_reader :string
end

# without Enumerable#filter_map

class Series
  def initialize(string)
    @string = string
  end

  def slices(length)
    raise ArgumentError, "Slice too big!" if length > string.size

    digits = string.chars.map(&:to_i)
    digits.filter_map.with_index do |_, index| 
      digits[index, length] if digits[index, length].size == length
    end
  end

  private

  attr_reader :string
end

series = Series.new('37103')
p series.slices(2)