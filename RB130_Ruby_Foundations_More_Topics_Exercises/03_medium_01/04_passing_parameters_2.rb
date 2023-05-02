=begin

### Goal:
Write a method that takes an array argument, yields the array elements to a block,
and the block variables should ignore the first two elements and group the other
elements under one array element `raptors`

### Rules:
INPUT: Array and block
OUTPUT: An array of all elements except the first two?
- use the splat operator
- don't use indices?
- can use splat with block variables

=end

def wierd_array(array)
  yield(array)
end

birds = %w(raven finch hawk eagle)
raptors = arrayz(birds) { |_, _, *raptors| [*raptors] }
p raptors