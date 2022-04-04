# Exercise 7.1

DEGREE = "\xC2\xB0"

def dms(angle_float)
  degrees = angle_float.truncate(0)
  unrounded_minutes = (angle_float - degrees) * 60
  minutes = unrounded_minutes.truncate(0)
  unrounded_seconds = (unrounded_minutes - minutes) * 60
  seconds = unrounded_seconds.truncate(0)

  if minutes.to_s.chars.count == 1
    minutes = "0" + minutes.to_s
  end
  
  if seconds.to_s.chars.count == 1
    seconds = "0" + seconds.to_s
  end

  %(#{degrees}#{DEGREE}#{minutes}'#{seconds}")
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# or simpler with #Kernel.format

DEGREE = "\xC2\xB0"

def dms(angle_float)
  degrees = angle_float.truncate(0)
  unrounded_minutes = (angle_float - degrees) * 60
  minutes = unrounded_minutes.truncate(0)
  unrounded_seconds = (unrounded_minutes - minutes) * 60
  seconds = unrounded_seconds.truncate(0)

  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# Further Exploration

DEGREE = "\xC2\xB0"

def dms(angle_float)
  degrees = angle_float.truncate(0)
  
  loop do 
    if degrees > 360
      degrees -= 360
    elsif degrees < 0
      degrees += 360
    end
    
    break if degrees > 0 && degrees < 360
  end 
  
  unrounded_minutes = (angle_float - degrees) * 60
  minutes = unrounded_minutes.truncate(0)
  unrounded_seconds = (unrounded_minutes - minutes) * 60
  seconds = unrounded_seconds.truncate(0)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(400) #== %(40°00'00")
p dms(-40) #== %(320°00'00")
p dms(-420) #== %(300°00'00")