['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# => 2

# Enumerable#count returns the count of elements. It optionally accepts either an argument 
# or block. With no argument or block it returns the number of elements. With an argument object
# it will return the number of elements == to the argument object. Here we have a block.
# With a block, #coutn calls the block on each element and returns the count of elements 
# for which the block returns a truthy value. In this case elements will evaluate to truthy if
# they are strings with a length of less than four chars. two elements in this array return
# a truthy value for that and so the return value of #count method here will be 2. 

# We can find out this information from checking the ruby docs for Enumerable#count or Array#count
# or also by running the code in IRB or a similiar REPL