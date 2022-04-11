# Exercise 9.10

def penultimate(string)
 string.split[-2]
end

p penultimate('last word') #== 'last'
p penultimate('Launch School is great!') #== 'is'

# Further Exploration Returns first of two middle words if # of words is even

def penultimate(string)
  words = string.split
  return string if words == []
    
  if words.length.even?
    words[(words.length / 2 - 1)]
  else
    words[words.length / 2]
  end
 end
 
 p penultimate('last word') #== 'last'
 p penultimate('Launch School is great!') #== 'School'
 p penultimate('Launch School great!') #== 'School'
 p penultimate('word') #== 'word'
 p penultimate(' ') #== ' '
