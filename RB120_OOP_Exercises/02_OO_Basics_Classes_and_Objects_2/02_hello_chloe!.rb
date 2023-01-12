class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename(new_name)
    self.name = new_name
  end
end

kitty = Cat.new('Sophie')
puts kitty.name
kitty.rename('Chloe')
puts kitty.name

=begin

On line 8, we define an instance method Cat#rename. This method
takes one argument 'new_name'. On line 9, the setter method for
@name instance variable (defined via attr_accessor on line 2) is
called and passed the value referenced by the method local
'new_name' variable which in this case is the String object
`Chloe`, which was passed in as an argument when the method was 
called on line 15. This invocation of the setter method re-assigns
the value referenced by `@name` to the this new value.

=end