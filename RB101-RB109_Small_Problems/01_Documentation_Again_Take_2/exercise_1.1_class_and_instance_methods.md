
Both methods are part of the `File` class in the Core API.

## [`File::path`](https://docs.ruby-lang.org/en/3.1/File.html#method-c-path)

`File::path` is an class method. It's syntax is as follows:

```ruby
File.path("some_file_path") 
#=> "some_file_path"

File.path(Pathname.new("some_file_path")) 
#=> "some_file_path"
```
`File::path` will return a string of given path passed in as an argument.

Class methods are called on the class.

<hr>

## [`File#path`](https://docs.ruby-lang.org/en/3.1/File.html#method-i-path)

`File#path` is an instance method. It's syntax is as follows:

```ruby
File.new("testfile").path 
#=> "testfile"

File.new("/tmp/../tmp/xxx", "w").path
#=> "/tmp/../tmp/xxx"
```
`File#path` returns the given pathname used to create a file as a string.

Instance methods are called on objects.