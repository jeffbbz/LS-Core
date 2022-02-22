#Exercise 7.6

def time_of_day(daytime)
  if daytime
    puts "It's daytime!"
  else 
    puts "It's nighttime!"
  end
end

daylight = [true, false].sample
time_of_day(daylight)