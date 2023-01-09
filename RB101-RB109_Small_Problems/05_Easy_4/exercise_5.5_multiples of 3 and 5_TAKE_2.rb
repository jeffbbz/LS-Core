# Exercise 5.5

def multisum(num)
  multiples = (1..num).select do |number|
                number % 3 == 0 || number % 5 == 0
              end
  multiples.sum
end

p multisum(3) #== 3
p multisum(5) #== 8
p multisum(10) #== 33
p multisum(1000) #== 234168

# Further Exploration

def multisum_with_inject(num)
  (0..num).inject do |sum, number| 
    sum + (number % 3 == 0 || number % 5 == 0 ? number : 0)
  end
end

p multisum_with_inject(3) #== 3
p multisum_with_inject(5) #== 8
p multisum_with_inject(10) #== 33
p multisum_with_inject(1000) #== 234168