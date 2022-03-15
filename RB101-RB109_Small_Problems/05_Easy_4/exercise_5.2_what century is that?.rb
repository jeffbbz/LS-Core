#Exercise 5.2

def century(year)
  time = Time.new(year)
  
  if year % 100 == 0
    era = time.strftime("%C").to_i
  else
    era = time.strftime("%C").to_i + 1
  end

  century_suffix(era)
end

def century_suffix(century)
  case
  when century.to_s.end_with?("1") then century = century.to_s + "st"
  when century.to_s.end_with?("2") then century = century.to_s + "nd"
  when century.to_s.end_with?("3") then century = century.to_s + "rd"
  else century = century.to_s + "th"
  end
end

p century(2000)
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
p century(1052)
p century(1127)
p century(11201)

# Official Solution

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end