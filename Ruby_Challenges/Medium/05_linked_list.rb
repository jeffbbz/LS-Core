class SimpleLinkedList
  attr_reader :size, :head

  def initialize
    @empty = true
    @size = 0
    @head
    @next
  end

  def empty?
    empty
  end

  def peek
    head.datum if head
  end

  def push(element)
    self.size += 1
    self.empty = false if empty
    self.next = head
    self.head = Element.new(element, head)
  end

  def pop
    self.size -= 1
    self.empty = true if size == 0
    popped = head.datum
    new_next = self.next.next if self.next
    self.head, self.next = self.next, new_next
    popped
  end

  def to_a
    dupe_list = dup
    size.times.with_object([]) { |_, arr| arr.push(dupe_list.pop) }
  end

  def reverse
    reversed_arr = to_a.reverse
    self.class.from_a(reversed_arr)
  end

  def self.from_a(array)
    arr_list = SimpleLinkedList.new
    return arr_list if array.nil? || array.empty?

    array.reverse_each { |arr_el| arr_list.push(arr_el) }
    arr_list
  end

  private

  attr_accessor :next, :empty
  attr_writer :size, :head
end

class Element
  attr_reader :datum, :next

  def initialize(datum, next_el=nil)
    @datum = datum
    @next = next_el
  end

  def tail?
    self.next.nil?
  end
end
