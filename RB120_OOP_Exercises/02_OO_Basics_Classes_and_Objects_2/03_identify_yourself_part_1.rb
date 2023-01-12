class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def identify
    self
  end
end

kitty = Cat.new('Sophie')
p kitty.identify

# As self inside an instance method refers to its calling object
# here self will refer to kitty as kitty is the calling object
# for the Cat#identify instance method on line 14.