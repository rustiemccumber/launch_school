# Write a method that displays a 4-pointed diamond in an n x n grid, 
# where n is an odd integer that is supplied as an argument to the method. 
# You may assume that the argument will always be an odd integer.


=begin

INPUT:  odd integer (n)
OUTPUT: display of 4 - point diamond in an n x n grid, n is odd number which is supplied 

RULES: assume the argument will always be odd 

ALGORITHM: 

- find the middle_number of the integer

- find the distance from the center of the grid
  + distance_from_center = middle_number - x  
- find the number of stars at each row
  + number_of_stars = n - (distance_from_center * 2)
- from 1.upto(middle) |x| find the number of stars for each row
   distance_from_center = middle_number - x
   number of_stares = n - (distance_from_center * 2)
  end 
  
- put the number of stars in center of 9
  + number_of_star.center(9)

example: 
diamond(3)

 *
***
 *


  
=end
require 'pry'
require 'pry-byebug'

# def diamond(n)
#   #binding.pry
#   half_of_n = n/2.to_f
#   middle_number = half_of_n.round

#   stars = 1
#   spaces = 0

#   1.upto(n) do |x|

#    if x < middle_number
#     spaces = (middle_number - x)
#     puts ' ' * spaces + '*' * stars
#     stars += 2
#    elsif x >= middle_number
#     spaces = (x - middle_number) 
#     puts ' ' * spaces + '*' * stars
#     stars -= 2 
#    end 
#   end      
# end 

def diamond(n)
   half_of_n = n/2.to_f
   middle_number = half_of_n.round

  1.upto(middle_number) do |position|
    distance_from_center = middle_number - position
    number_of_stars = n - (distance_from_center * 2)
    stars = '*' * number_of_stars
    puts stars.center(n)
  end

  (middle_number + 1).upto(n) do |position|
    distance_from_center = position - middle_number 
    number_of_stars = n - (distance_from_center * 2)
    stars = '*' * number_of_stars
    puts stars.center(n)
    
  end 

end 

p diamond(9)

