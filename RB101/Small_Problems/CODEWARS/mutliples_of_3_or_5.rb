=begin

If we list all the natural numbers below 10 that 
are multiples of 3 or 5, we get 3, 5, 6 and 9. 
The sum of these multiples is 23.

Finish the solution so that it returns the sum of all
 the multiples of 3 or 5 below the number passed in.

Note: If the number is a multiple of both 3 and 5,
only count it once.
  
=end 

=begin
- INPUT: number 
- OUTPUT:the sum of all numbers that are divisible by 3 and 5

- problem domain: if the number is a mutiple of both 3 and 5 conly
count it once 

- implicit requirements:

- clarifying questions:

- edge cases

Algorithm:

create an array from 3...number 

iterate through the array
create a if statement that acounts for 3, 5, and 3 & 5 
<< numbers to a new array 

EXAMPLES

=end 

def multiples_3_5(number)
  
  

  array_numbers = (3...number).select do |numorator|

    if (numorator % 3 == 0) && (numorator % 5 == 0)
      true
    elsif numorator % 5 == 0 
      true
    elsif numorator % 3 == 0 
      true
    else 
      false
    end
  end 
  array_numbers 
end 


p multiples_3_5(10)