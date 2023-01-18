class Book
  attr_accessor :author, :title
  
  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new
book.author = "Neil Stephenson"
book.title = "Snow Crash"
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

# Further Exploration

=begin
  
It seems less verbose to create and initialize at the same time like in the previous
exercise. However, from a input standpoint, it might lead to less errors if the two inputs
are seperated from each other more clearly like in this example. However seperating the steps
could lead to missing inputs where as being required to input them together would not.

=end
