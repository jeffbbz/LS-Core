require 'date'

class Meetup
  def initialize(year, month)
    @year = year
    @month = month
  end

  def day(weekday, descriptor)
    month_start = Date.new(year, month, 1)
    weekdays = find_weekdays(weekday, month_start)
    find_descriptor(weekdays, descriptor)
  end

  private

  attr_reader :year, :month

  def find_weekdays(weekday, month_start)
    day = calc_wday(weekday)
    month_end = (month_start >> 1) - 1
    month_start.step(month_end).select { |date| date.wday == day }
  end

  def calc_wday(weekday)
    Date::DAYNAMES.index(weekday.capitalize)
  end

  def find_descriptor(weekdays, descriptor)
    case descriptor.downcase
    when 'first'  then weekdays[0]
    when 'second' then weekdays[1]
    when 'third'  then weekdays[2]
    when 'fourth' then weekdays[3]
    when 'fifth'  then weekdays[4]
    when 'last'   then weekdays[-1]
    else
      find_teenths(weekdays)
    end
  end

  def find_teenths(weekdays)
    weekdays.detect { |date| (13..19).include?(date.mday) }
  end
end