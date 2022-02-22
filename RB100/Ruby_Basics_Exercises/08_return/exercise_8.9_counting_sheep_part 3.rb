#Exercise 8.9

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

# 0 1 2 nil. p shows inspect. the explicit return exits the method after 2
# and does not have a return value thus nil.