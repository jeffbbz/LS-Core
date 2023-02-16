class Library
  attr_accessor :address, :phone, :books

  def initialize(address, phone)
    @address = address
    @phone = phone
    @books = []
  end

  def check_in(book)
    books.push(book)
  end

  def display_books
    books.each(&:display_data)
  end
end

class Book
  attr_accessor :title, :author, :isbn

  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn
  end

  def display_data
    puts "---------------"
    puts "Title: #{title}"
    puts "Author: #{author}"
    puts "ISBN: #{isbn}"
    puts "---------------"
  end
end

community_library = Library.new('123 Main St.', '555-232-5652')
learn_to_program = Book.new('Learn to Program', 'Chris Pine', '978-1934356364')
little_women = Book.new('Little Women', 'Louisa May Alcott', '978-1420951080')
wrinkle_in_time = Book.new('A Wrinkle in Time', 'Madeleine L\'Engle', '978-0312367541')

community_library.check_in(learn_to_program)
community_library.check_in(little_women)
community_library.check_in(wrinkle_in_time)

#community_library.books.display_data

community_library.display_books

=begin

We want to display book information for each book in the library. In the original code, we raise
a `NoMethodError` exception because on line 42 we are attempting to call the `Book#display_data`
instance method on the `Array` class object, the instance method `@books`. As this is a custom
method, `Array` class doesn't have exposure to that behavior. To fix this issue, we need to call 
`Array#each` to access Book class objects (as the books are stored in the @books instance variable 
as and array.) and call `Book#display_data` on the Book instance elements of the array. A new 
`Library#display_books` instance method has been added on lines 14-16 doing just that. Then we just 
need to invoke that method on the `Library` instance line on 48.

=end