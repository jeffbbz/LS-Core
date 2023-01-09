#Exercise 6.3

MINUTES_PER_DAY = 1440

def after_midnight(string)
 hours = string.to_i * 60
 minutes = string[3].to_i * 10 + string[4].to_i
 delta_minutes = hours + minutes
 delta_minutes == MINUTES_PER_DAY ? 0 : delta_minutes
end

def before_midnight(string)
  hours = string.to_i * 60
  minutes = string[3].to_i * 10 + string[4].to_i
  delta_minutes = hours - minutes
  delta_minutes == MINUTES_PER_DAY ? 0 : delta_minutes
end

p after_midnight('00:00')
p before_midnight('00:00')
p after_midnight('12:34')
p before_midnight('12:34')
p after_midnight('24:00')
p before_midnight('24:00')

# or slight refactor

MINUTES_PER_DAY = 1440

def after_midnight(string)
   hours, minutes = string.split(':').map(&:to_i)
   delta_minutes = hours * 60 + minutes
   delta_minutes == MINUTES_PER_DAY ? 0 : delta_minutes
end
  
def before_midnight(string)
  hours, minutes = string.split(':').map(&:to_i)
  delta_minutes = hours * 60 - minutes
  delta_minutes == MINUTES_PER_DAY ? 0 : delta_minutes 
end
  
p after_midnight('00:00')
p before_midnight('00:00')
p after_midnight('12:34')
p before_midnight('12:34')
p after_midnight('24:00')
p before_midnight('24:00')