
=begin 
Given a number , Return _The Maximum number _ 
could be formed from the digits of the number given .

=end 

=begin
- INPUT: integer
- OUTPUT: the largest number commbination with the digits in the number 

-problem domain: 0 - 9, duplication can occure

- implicit requirements:

- clarifying questions:

- edge cases

Algorithm:
take the input number convert it to a string
split the string into elements in an array

convert each element to an integer 

sort.reverse the string and join 

EXAMPLES

=end 

# maxNumber (213) ==> return (321)
# maxNumber (7389) ==> return (9873)
# maxNumber (63729) ==> return (97632)
# maxNumber (566797) ==> return (977665)
# maxNumber (17693284) ==> return (98764321)
# 98764321 is _The Maximum number _ could be formed from the digits of the number *17693284*** 


def maxNumber(int)

  array_of_string = int.to_s.chars
  array_of_integers = int.to_s.chars.map {|char| char.to_i}
  array_of_integers.sort.reverse.join.to_i
  
end 

p maxNumber (213) #==> return (321)
p maxNumber (7389) #==> return (9873)
p maxNumber (63729) #==> return (97632)
p maxNumber (566797) #==> return (977665)
p maxNumber (17693284) #==> return (98764321)

