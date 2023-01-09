['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# => {'a'=>'ant', 'b'=>'bear', 'c'=>'cat'}

# The return value is a new hash with 3 key-value pairs, where the key is the first letter of the
# string in the value. Enumerable#each_with_object takes a block and a method argument. The arg
# is a collection object that will be returned by the method upon completion of iteration. Here
# that argument is an empty hash. The block has two args. value which represents the current value
# of the array element during iteration and hash which represents the new collection object that
# was passed to the method as an arg, in this case the empty hash. on line two we are adding
# to the hash, the value at each 0 index of each element in the array, in this case the first
# character in the each string element, (a,b,c) as keys and the elements of the array themselves
# as the respective values of the hash.