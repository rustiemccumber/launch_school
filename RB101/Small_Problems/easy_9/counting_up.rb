=begin

Write a method that takes an integer argument, and returns an Array of all integers, 
in sequence, between 1 and the argument. You may assume that the argument will always 
be a valid integer that is greater than 0.

algorythm 
initialize empty array
use 1.upto(number)
insert number to empty array 


Examples:

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]  

=end

def sequence(number)
  array = []
  1.upto(number) {|num| array << num }
  array 
end 

p sequence(5) #== [1, 2, 3, 4, 5]s
p sequence(3) #== [1, 2, 3]
p sequence(1) #== [1]  

