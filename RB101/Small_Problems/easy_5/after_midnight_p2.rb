=begin 

Write two methods that each take a time of day in 24 hour format, and return the number of
minutes before and after midnight, respectively. Both methods should return a value in the
range 0..1439.

algorthim after_midnight

-extract hours an minute 
 - split
 - set hour to variable
 - set minute to variable
if hour == 24
  hour = 0
convert hour to min
add min + hour(min)

algorthim before_midnight
- run after_midnight funciton
-assign after midnight to variable (after_midnight_minutes)
hour = after_midnight
- if  hour == 0
  hour = 24
-return subtract 1440 - after_midnight 


examples 
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

=end 

=begin 
my answer
def after_midnight(time)
  time_array = time.split(/(:)/)
  hour = time_array[0].to_i
  minutes = time_array[2].to_i
  if hour == 24
    hour = 0
  end 
  hour_to_minutes = 60 * hour  
  total_minutes_after_midnight = hour_to_minutes + minutes
end

def before_midnight(time)
  time_after_midnight = after_midnight(time)
  if time_after_midnight == 0
   return time_before_midnight = 0
  end 
  time_before_midnight = 1440 - time_after_midnight
end
=

# launch school help
HOURS_PER_DAY = 24
MINUTES_IN_HOUR = 60
MINUTES_IN_DAY = MINUTES_IN_HOUR * 24

def after_midnight(time)
  hour, minutes = time.split(":").map(&:to_i)
  ((hour * MINUTES_IN_HOUR) + minutes) % MINUTES_IN_DAY
end

def before_midnight(time)
  return 0 if after_midnight(time) == 0
  MINUTES_IN_DAY - after_midnight(time)
end 
=end

#using ruby time/date

HOURS_PER_DAY = 24
MINUTES_IN_HOUR = 60
MINUTES_IN_DAY = MINUTES_IN_HOUR * 24

def after_midnight(time_string)
require 'time'
stored_time = Time.parse(time_string)
(stored_time.hour * MINUTES_IN_HOUR + stored_time.min) 
end

=begin
def before_midnight(time_string)
return 0 if after_midnight(time_string) == 0
MINUTES_IN_DAY - after_midnight(time_string)
end
=end 

p after_midnight('00:00') 
p before_midnight('00:00') 
p after_midnight('12:34')
p before_midnight('12:34') 
p after_midnight('24:00')
p before_midnight('24:00') 



