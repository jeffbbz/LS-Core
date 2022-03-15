#Exercise 6.11

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

string = "hello world"
p spin_me(string)
p string
p string.object_id
p spin_me(string).object_id

# The string object returned will be a different object than the one passed as an argument