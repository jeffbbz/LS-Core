# with proc

class Device
  def initialize
    @recordings = []
  end

  def listen(&block)
    record(block) if block_given?
  end

  def play
    puts "Nothing Here!" if recordings.empty?
    puts recordings.last.call if !recordings.empty?
  end

  private

  attr_reader :recordings

  def record(recording)
    recordings << recording
  end
end

listener = Device.new
listener.listen { "Hello World!" }
listener.listen
listener.play # Outputs "Hello World!"

# without proc

class Device
  def initialize
    @recordings = []
  end

  def listen
    record(yield) if block_given?
  end

  def play
    puts "Nothing Here!" if recordings.empty?
    puts recordings.last if !recordings.empty?
  end

  private

  attr_reader :recordings

  def record(recording)
    recordings << recording
  end
end

listener = Device.new
listener.listen { "Hello World!" }
listener.listen
listener.play # Outputs "Hello World!"
