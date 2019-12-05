=begin
 
Write a method that takes a positive integer as an argument and returns that number with its digits reversed. 

-input: integer
-output: reverse of integer 

algorithm
convert integer to string
.reverse
convert string back to integer

Examples:

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

=end

def reversed_number(integer)
  integer.to_s.reverse.to_i
end 

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1