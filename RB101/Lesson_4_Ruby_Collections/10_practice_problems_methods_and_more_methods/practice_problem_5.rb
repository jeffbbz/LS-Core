hash = { a: 'ant', b: 'bear' }
hash.shift

# => [:a, 'ant']

Hash#shift removes the first hash entry (destructively) and returns it as a 2 element array.
We can find this info looking Hash#shift in the ruby docs