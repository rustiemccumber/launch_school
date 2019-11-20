=begin

The time of day can be represented as the number of minutes before or after midnight.
If the number of minutes is positive, the time is after midnight. If the number of
minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and 
returns the time of day in 24 hour format (hh:mm). Your method should
work with any integer input.

-input: input integer, negative or positive 
-output:  
  -if integer is negative the time is before midnight by the number of minutes
  -if integer is positive the time is after midnight by the number of minutes

algorithym/strategy
  if minutes % 1440 > 0
    minutes_adjusted = minutes % 1440
  else
    minutes_adjusted = minutes 

 

{Hours:minutes}


Example
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

=end

=begin
METHOD FOR NOT USING TIME/DATE
def time_of_day(minutes)
  total_mins = minutes % 1440
  hours = total_mins / 60
  mins = total_mins % 60
  puts format('%02d:%02d', hours, mins)
end
=end

TIME_INITIAL = Time.new(2019, 11, 17)

def time_of_day(minutes)
  minutes_to_sec = minutes.to_i * 60
  time_final = TIME_INITIAL + minutes_to_sec
  what_day = time_final.strftime("%A")
  what_time = time_final.strftime("%H:%M")  
  puts what_day + " " + what_time
end

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"


