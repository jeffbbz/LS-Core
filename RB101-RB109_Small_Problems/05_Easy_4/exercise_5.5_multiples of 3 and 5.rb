# #Exercise 5.5

def multisum(number)
  multiples = []
  number.downto(1) do |num|
    if num % 3 == 0 || num % 5 == 0
      multiples << num
    end
  end
  multiples.sum
end

p multisum(3)
p multisum(5)
p multisum(10)
p multisum(1000)

# Further Exploration with Enumerable.inject

def multisum(number)
  (1..number).inject(0) do |sum, num|
    (num % 3 == 0) || (num % 5 == 0) ? sum += num : sum += 0
  end
end

p multisum(3)
p multisum(5)
p multisum(10)
p multisum(1000)

# why doesn't this work?

# def multisum(number)
#   (1..number).inject(0) do |sum, num|
#     if (num % 3 == 0 || num % 5 == 0)
#       sum += num
#     end
#   end
# end

# p multisum(3)
# p multisum(5)
# p multisum(10)
# p multisum(1000)