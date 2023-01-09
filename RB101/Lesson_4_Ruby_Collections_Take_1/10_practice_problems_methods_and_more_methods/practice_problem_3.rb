[1, 2, 3].reject do |num|
  puts num
end

# Array#reject returns a new Array of elements from the original array for which its block returns
# a falsey value (false or nil). Since the block is invoking puts on each iteration, and
# puts always returns nil, the return value here will be a new array with each element 
# =>[1, 2, 3]