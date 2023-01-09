# Small Problems > Medium 2 > Unlucky Days
require 'date'

def friday_13th(year)
  given_year = Date.new(year)
  year_end = Date.new(year,12,31)
  given_year.step(year_end).select { |day| day.friday? && day.mday == 13 }.size
end

def friday_13th(year)
  given_year = Date.new(year)
  next_year = Date.new(year).next_year
  given_year.upto(next_year).select { |day| day.friday? && day.mday == 13 }.size
end

def friday_13th(year)
  given_year = Date.new(year)
  year_end = Date.new(year) + 364
  given_year.upto(year_end).select { |day| day.friday? && day.mday == 13 }.size
end

def friday_13th(year)
  (Date.new(year,1,1)..Date.new(year,12,31)).select do |day| 
    day.friday? && day.mday == 13
  end.size
end

p friday_13th(2015) #== 3
p friday_13th(1986) #== 1
p friday_13th(2019) #== 2