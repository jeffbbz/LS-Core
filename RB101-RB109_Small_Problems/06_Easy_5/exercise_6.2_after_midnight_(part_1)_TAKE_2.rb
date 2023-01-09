# Exercise 6.2

MIN_IN_HOUR = 60
HOURS_IN_DAY = 1440

def after_midnight(time)
  hours = time[0..1].to_i * MIN_IN_HOUR
  return 0 if hours == HOURS_IN_DAY
  minutes = time[-2..-1].to_i
  hours + minutes
end

def before_midnight(time)
  hours = time[0..1].to_i * MIN_IN_HOUR
  return 0 if hours == HOURS_IN_DAY
  minutes = time[-2..-1].to_i
  hours - minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0