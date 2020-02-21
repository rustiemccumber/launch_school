
# Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

# Examples:

# friday_13th(2015) == 3
# friday_13th(1986) == 1
# friday_13th(2019) == 2
# Hide Solution & Discussion
# Approach/Algorithm
# Rubys Date class may be helpful here.
# Look at how to initialize a Date object
# Look at the friday? method
# Solution

require 'date'

def friday_13th(year)
  unlucky_count = 0
  month = 1
  12.times do
    unlucky_count += 1 if Date.new(year, month, 13).friday?
    month += 1
  end
  unlucky_count

end

p friday_13th(2019)