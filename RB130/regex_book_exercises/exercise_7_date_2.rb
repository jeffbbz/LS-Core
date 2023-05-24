def format_date(date)
  date.sub(/\A(\d+)-(\d+)-(\d+)/, '\3.\2.\1')
      .sub(/\A(\d+)\/(\d+)\/(\d+)/, '\3.\2.\1')
end

# with capture group for delimiter

def format_date(date)
  date.sub(/\A(\d+)([\-\/])(\d+)\2(\d+)\z/, '\4.\3.\1')
end

# with range

def format_date(date)
  date.sub(/\A(\d{4})([\-\/])(\d{2})\2(\d{2})\z/, '\4.\3.\1')
end

p format_date('2016-06-17') # -> '17.06.2016'
p format_date('2017/05/03') # -> '03.05.2017'
p format_date('2015/01-31') # -> '2015/01-31' (no change)