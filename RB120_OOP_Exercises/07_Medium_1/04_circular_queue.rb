=begin

### Goal

Define a CircularQueue class that implements a circular queue.

### Tasks

- Obtain queue buffer size from argument passed at instantiation
- Methods Required:
  - CircularQueue#enqueue - adds object to queue
  - CircularQueue#dequeue - removes and returns oldest object in queue || nil if queue empty
- no stored values are nil (but nil can be used to designate empty spots in queue)

=end

class CircularQueue
  def initialize(buffer_size)
    @buffer_size = buffer_size
    @queue = Array.new
  end

  def enqueue(queue_element)
    queue.shift if queue.size == buffer_size
    queue.push(queue_element)
  end

  def dequeue
    queue.empty? ? nil : queue.shift
  end

  private

  attr_reader :buffer_size, :queue
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil