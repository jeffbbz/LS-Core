class Book
  def title
    @title
  end
  
  def author
    @author
  end
  
  def initialize(author, title)
    @author = author
    @title = title
  end

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new("Neil Stephenson", "Snow Crash")
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

# Line 15 outputs as expected (once you learn that %() is syntactic sugar for string) because
# the objects being used in the string interpolation are both String objects and therefore 
# use the built-in #to_s for Kernel#puts. Line 16 is different because we are using string
# interpolation with the Book class object book which has an overriding Book#to_s method
# this is called instead once the puts call reaches the string interpolation line.

# Further Exploration

=begin

attr_reader defines a getter method for an instance variable, attr_writer defines only a setter
method for an instance variable, and attr_accessor defines both. In this case we used
attr_reader because we did not need to change the values referenced by the instance variables.
We could have also used attr_accessor but not attr_writer. If we had written out the two
getter methods long form the program also would work. The output does not change but our code
has become longer. However, we may want to do this if we wanted add some custom expressions to
our getter or setter methods.

=end