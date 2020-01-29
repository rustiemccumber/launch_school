# 20:00
#Next Featured Number Higher than a Given Value
# A featured number (something unique to this exercise)
# is an odd number that is a multiple of 7, and
# whose digits occur exactly once each. So, for example, 
# 49 is a featured number, but 98 is not (it is not odd), 
# 97 is not (it is not a multiple of 7), and 133 is not 
# (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, 
# and returns the next featured number that is greater than 
# the argument. Issue an error message if there is no next 
# featured number.

=begin 

-input: integer
-output: next featured number

-problem domain:
featured number:
is odd
divisible by 7
and does not have repeating digits. 

algorithim: 

convert the number into a string 

until number % 7 == 0 && number.odd? && number.to_s.uniq.to_i == number 
  number += 1
end 

number 

=end 

# Examples:

 #&& ((number.to_s.chars.uniq.join.to_i) == number)
# featured(12) == 21
# featured(20) == 21
# featured(21) == 35
# featured(997) == 1029
# featured(1029) == 1043
# featured(999_999) == 1_023_547
# featured(999_999_987) == 1_023_456_987

# featured(9_999_999_999) There is no possible number that fulfills those requirements
#Show Solution & Discussion

def featured(number)
  
  loop do 
    number += 1
    return number if (number % 7 == 0) && (number.odd?) && ((number.to_s.chars.uniq.join.to_i) == number)
    #break if number >= 9_876_543_210
  end

    'there is no posisble'
 
end 

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999)



