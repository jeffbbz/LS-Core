def format_date(date)
  return date if date[4] != '-'
  swapped = date.gsub(/\-/, ".")
  swapped[0..3], swapped[-2..-1] = swapped[-2..-1], swapped[0..3]
  swapped
end

# Better solution based of LS solution with just regex

def format_date(date)
  date.sub(/\A(\d+)-(\d+)-(\d+)\z/, '\3.\2.\1')
end

p format_date('2016-06-17') # -> '17.06.2016'
p format_date('2016/06/17') # -> '2016/06/17' (no change)