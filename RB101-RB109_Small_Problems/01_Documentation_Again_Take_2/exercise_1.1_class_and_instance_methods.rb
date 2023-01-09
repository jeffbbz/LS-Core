#Exercise 1.1

File::path

Is found under the docs for File class from the Core API

https://ruby-doc.org/core-3.1.0/File.html#method-c-path

path(path) → string

File::path is a class method and therefore called on the class itself. 

This returns a string representation of the file path

ie: File.path("/User/Terry/Cool") => "/User/Terry/Cool"

------

File#path

Is found under the docs for File class from the Core API

https://ruby-doc.org/core-3.1.0/File.html#method-i-path

path(path) → string

File#path is an instance method and therefore call on objects

This returns the pathname used to create the file as a string

File.new("cool_file").path => "cool_file"