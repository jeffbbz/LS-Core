# Exercise 6.2

MINUTES_PER_DAY = 1440

def time_of_day(integer)
  integer = integer.divmod(MINUTES_PER_DAY)
  hours = integer[1] / 60
  minutes = integer[1] % 60
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)

# Further Exploration Problem 1

def time_of_day(integer)
  format('%02d:%02d', (integer.divmod(MINUTES_PER_DAY))[1] / 60, (integer.divmod(MINUTES_PER_DAY))[1] % 60)
end

p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)

# Further Exploration Problem 2


Time.now


Time.at(1234).strftime