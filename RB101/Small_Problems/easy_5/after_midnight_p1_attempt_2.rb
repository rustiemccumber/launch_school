# The time of day can be represented as the number 
# of minutes before or after midnight. If the number
# of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is 
# before midnight.

# Write a method that takes a time using this minute-based 
# format and returns the time of day in 24 hour format (hh:mm).
# Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# Examples:

# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

=begin 

-input: number of minutes
-ouput: string.  time of day in 24 hour clock 

-problem domain: if the number of minutes is negative, it 
represents the time before midnight 

- if the number if positive, it represents the time aftermindnight


algorithim: 

divmod the number by 60 to get the hours and minutes. 
if the the first number in the array is greater that 24, get the 
remainder of that number % 24 

if the number is negative subtract 24 by number 


=end 


def time_of_day(total_minutes)

  hour, minutes = total_minutes.divmod(60)

  if hour >= 24
    hour = hour % 24
  end 

  if total_minutes.negative?


end 
