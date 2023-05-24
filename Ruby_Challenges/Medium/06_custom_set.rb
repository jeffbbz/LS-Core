class CustomSet
  def initialize(elements=[])
    @elements = elements.uniq
  end

  def empty?
    elements.empty?
  end

  def contains?(element)
    elements.include?(element)
  end

  def subset?(set)
    size <= set.size && same_elements?(set)
  end

  def disjoint?(set)
    elements.none? {|el| set.contains?(el) }
  end

  def eql?(set)
    same_size?(set) && same_elements?(set)
  end

  def ==(other)
    eql?(other)
  end

  def add(element)
    elements.push(element) if !contains?(element)
    self
  end

  def intersection(set)
    self.class.new(elements.select { |el| set.contains?(el) })
  end

  def difference(set)
    self.class.new((elements - set.elements))
  end

  def union(set)
    self.class.new((elements + set.elements).uniq)
  end

  protected

  attr_reader :elements

  def size
    elements.uniq.size
  end

  def same_size?(set)
    size == set.size
  end

  def same_elements?(set)
    elements.all? {|el| set.contains?(el) }
  end
end