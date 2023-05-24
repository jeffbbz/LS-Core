class Clock
  MINS_IN_DAY = 1440

  attr_reader :hours, :minutes

  def initialize(hours, minutes)
    @hours = hours
    @minutes = minutes
  end
  
  def self.at(hours, minutes=0)
    Clock.new(hours, minutes)
  end

  def -(minus_mins)
    new_mins = total_mins - minus_mins
    while new_mins < 0
      new_mins += MINS_IN_DAY
    end
    hrs, mns = time_in_hours_and_minutes(new_mins)
    Clock.new(hrs, mns)
  end

  def +(added_mins)
    new_mins = total_mins + added_mins
    while new_mins >= MINS_IN_DAY
      new_mins -= MINS_IN_DAY
    end
    hrs, mns = time_in_hours_and_minutes(new_mins)
    Clock.new(hrs, mns)
  end

  def ==(other)
    hours == other.hours && minutes == other.minutes
  end

  def to_s
    "#{sprintf('%.2d:%.2d', hours, minutes)}"
  end

  private

  def total_mins
    (60 * hours) + minutes
  end

  def time_in_hours_and_minutes(mins)
    mins.divmod(60)
  end
end