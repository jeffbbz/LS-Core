#Exercise 3.4

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

#nothing because an explicit return will cause Ruby to exit the method and ignore the rest of the method def