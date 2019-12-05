=begin
  
rescue 
Write a method that takes a number as an argument. If the argument is a positive
number, return the negative of that number. If the number is 0 or negative,
return the original number.

-input: integer
-output: 
  -if integer is negative return original
  -if integer is zero return 0
  -if integer is positive return negative integer

algorithm
 if the integer == negative || integer == 0
  return integer
 else 
  -integer
end 

Examples;

negative(5) == -5
negative(-3) == -3
negative(0) == 0   => e
  
end

=end 

def negative(integer)
  integer.negative? || integer == 0 ? integer : - integer 
end 

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0 