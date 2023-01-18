class Banner
  def initialize(message)
    @message = message
    @length = message.size
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    "+-#{'-' * (@length)}-+"
  end

  def empty_line
    "| #{' ' * (@length)} |"
  end

  def message_line
    "| #{@message} |"
  end
end

banner = Banner.new('To boldly go where no one has gone before.')
puts banner
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

banner = Banner.new('')
puts banner
# +--+
# |  |
# |  |
# |  |
# +--+

## Further Exploration

class Banner
  def initialize(message, length=nil)
    @message = message
    @length = length ? length : message.size
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    "+-#{'-' * (@length)}-+"
  end

  def empty_line
    "| #{' ' * (@length)} |"
  end

  def message_line
    "| #{@message.center(@length)} |"
  end
end

banner = Banner.new('To boldly go where no one has gone before.', 65)
puts banner
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

banner = Banner.new('', 30)
puts banner
# +--+
# |  |
# |  |
# |  |
# +--+