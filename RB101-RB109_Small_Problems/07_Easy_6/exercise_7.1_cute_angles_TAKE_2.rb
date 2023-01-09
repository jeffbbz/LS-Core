# Exercise 7.1

DEGREE = "\xC2\xB0"

def degrees(float)
  float.truncate
end

def minutes(float, degrees)
  (float - degrees) * 60
end

def seconds(minutes)
  (minutes - minutes.truncate) * 60
end

def dms(float)
  degrees = degrees(float)
  minutes = minutes(float, degrees)
  seconds = seconds(minutes)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) #== %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
p dms(400) #== %(400°00'00")
p dms(-40) #== %(-40°00'00")
p dms(-420) #== %(-420°00'00")