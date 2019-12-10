=begin
Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and
returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol 
(°) to represent degrees, a single quote (') to represent minutes, 
and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

DEGREE = "\xC2\xB0"
MINUTES = '
SECONDS = "

input = float
output = string 
  -representing anlge between 0 and 360
  - ° to represent degrees
  - ' to represent minutes
  - " to represent seconds

Algortim
 - split the float into its leading whole number and its trailing decimals.
   - assign the leading whole number to the ° position
     - to_i to get leading first number
     - # % 1 to get trailing numbers
 - multiple the trailing decimel by 60.  
   - split this number into its leading whole number and its trailing decimals 
     - to_i to get leading first number
     - # % 1 to get trailing numbers
   - assign the leading whole number to the ' position
- multipy the remaining trailing decimel by 60
  - assign the leading whole number to the " position 
     - to_i to get leading first number


dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

=end 

DEGREE = "\xC2\xB0"
MINUTES = "'"
SECONDS = '"'

def dms(number) 
  float = number.to_f
  minutes = (float % 1) * 60
  seconds = (minutes % 1) * 60
  degrees = float.to_i 

  %(#{degrees}+DEGREE#{minutes}+MINUTES#{seconds}+SECONDS) 
end

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00")








