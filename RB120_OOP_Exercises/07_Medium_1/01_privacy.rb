class Machine
  def start
    self.flip_switch(:on)
  end

  def stop
    self.flip_switch(:off)
  end
  
  private

  attr_writer :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

=begin
  
To modify this class definition to make the named method private, we need to call `module#private` on line 10
and move the `attr_writer :switch` and `Machine#flip_switch` methods below that. We can also remove the appended `self.`
to the `flip_switch` method calls on lines 3 and 7, but our program will still work with those there.

=end


# Further Exploration

class Machine
  def start
    self.flip_switch(:on)
  end

  def stop
    self.flip_switch(:off)
  end

  def switch_state
    switch.to_s
  end
  
  private

  attr_accessor :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

garfield = Machine.new

garfield.start
p garfield.switch_state

=begin
  
To add a private getter method for` @switch` we can simply change the private `attr_writer` to `attr_accessor` on line 45.
Then on lines 39-41, I've defined a method `Machine#switch_state` which returns the return value of the `#switch` getter method,
which is the value referenced by the instance variable `@switch`, converted to a string representation.

=end

