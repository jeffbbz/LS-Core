# def compute
#   if block_given?
#     yield
#   else
#     "Does not compute."
#   end
# end


# p compute { 5 + 3 } == 8
# p compute { 'a' + 'b' } == 'ab'
# p compute == 'Does not compute.'

# Further Exploration

def compute(item)
  if block_given?
    yield(item)
  else
    "Does not compute."
  end
end


p compute(5) { |num| num + 3 } == 8
p compute('a') { |char| char + 'b' } == 'ab'
p compute(7) == 'Does not compute.'