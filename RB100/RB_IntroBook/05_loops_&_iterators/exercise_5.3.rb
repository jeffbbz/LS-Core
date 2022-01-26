#Exercise 5.3

def countdown(x)
  puts x
  if x > 0
    countdown(x - 1)
  end
end

countdown(10)
countdown(0)
countdown(30)
countdown(-2)



