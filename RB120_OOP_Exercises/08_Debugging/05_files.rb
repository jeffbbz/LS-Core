class File
  
  attr_accessor :name, :byte_content

  def initialize(name)
    @name = name
  end

  alias_method :read,  :byte_content
  alias_method :write, :byte_content=

  def copy(target_file_name)
    target_file = self.class.new(target_file_name)
    target_file.write(read)

    target_file
  end

  def to_s
    "#{name}.#{self.class::FORMAT}"
  end
end

class MarkdownFile < File
  FORMAT = :md
end

class VectorGraphicsFile < File
  FORMAT = :svg
end

class MP3File < File
  FORMAT = :mp3
end

# Test

blog_post = MarkdownFile.new('Adventures_in_OOP_Land')
blog_post.write('Content will be added soon!'.bytes)

copy_of_blog_post = blog_post.copy('Same_Adventures_in_OOP_Land')

puts copy_of_blog_post.is_a? MarkdownFile     # true
puts copy_of_blog_post.read == blog_post.read # true

puts blog_post

=begin

The original code throws a `NameError` (uninitialized constant File::FORMAT) exception. The reason this is thrown
is that on line 46, when we pass the `MarkdownFile` class instance referenced by local variable `blog_post` to the
`puts` method, we invoke the custom `File#to_s method` (lines 19-21). This custom `to_s` attempts to reference the constant
`FORMAT`. However, `FORMAT` is only initialized in each subclass and Ruby attempts to resolve constants lexically. When it
cannot find `FORMAT` in `File`, it gives up and throws the error.

We can fix this issue by changing the second string interpolation on line 20 to `self.class::FORMAT`. In this way,
self will be the instance invoking File#to_s method and its class is that instances class. Thus when our MarkdownFile
instance invokes File#to_s, we are really referencing MarkdownFile::FORMAT, which will be able to be resolved lexically.

=end
