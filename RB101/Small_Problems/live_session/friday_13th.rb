
=begin
write a method that returns the number of Friday the 13ths in the year
passed in as an argumnet. You may assume that the year is greater than 1752 
(when the modern gregorian calendar was adopted by the united kingodm),
and you may assum ethat the same calendar will remain in use for the
foreseeable furture.


Examples:

friday_13th?(2015) # -> 3
fiday_13th?(1986) # -> 1

problem domain: greater than 1752

implicit requirements:

questions:

algorithm: 

month = 1
date = Date.new(year, month, 13)

counter = 0 

iterate from the starting from 1 until 12 
checking if the date is a friday, if it is a friday increment counter 

return.counter

=end
require 'date'

def friday_13th?(year)

  month = 1
  counter = 0
  
  loop do
    date = Date.new(year, month, 13)
    break if month == 13
    if date.friday?
      counter += 1 
    end
    month += 1
  end 

  counter
end 

p friday_13th?(2015) # -> 3
p friday_13th?(1986) # -> 1



