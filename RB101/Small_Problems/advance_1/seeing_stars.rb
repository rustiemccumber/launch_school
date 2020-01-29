# Write a method that displays an 8-pointed star in an nxn grid, where n is an odd
# integer that is supplied as an argument to the method. The smallest such star you
# need to handle is a 7x7 grid.

=begin 

- split this problem into two halves
- 
- find the middle number 

- spaces_between_stars = (middle_number - 2)
- spaces_before_stars = 0 
- middle_number = (n.to_f/2).round


- 1.upto(middle number -1)
   puts ((spaces_before_stars * ' ') + '*' + (spaces_between_stars * ' ') + '*' + (spaces_between_stars * ' ') + '*'
   spaces_before_stars += 1
   spaces_between_stars -= 1
  

- 
=end 
# Examples

# star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *
# star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *

require 'pry'
require 'pry-byebug'

def star(n)

  #binding.pry
  
  middle_number = (n.to_f/2).round
  spaces_between_stars = (middle_number - 2) 

  1.upto(middle_number - 1) do |x|
    puts  ('*' + (' ' * spaces_between_stars) + '*' + (' ' * spaces_between_stars) + '*').center(n)
    spaces_between_stars -= 1
  end 

  spaces_between_stars = 0 

  puts '*' * n

  1.upto(middle_number - 1) do |x|
    puts  ('*' + (' ' * spaces_between_stars) + '*' + (' ' * spaces_between_stars) + '*').center(n)
    spaces_between_stars += 1
  end 
end 
  
#   1.upto(middle_number - 1) do |x|
#     puts ((' ' * spaces_before_stars) + '*' + (' ' * spaces_between_stars) + '*' + (' ' * spaces_between_stars) + '*')
#     spaces_before_stars -= 1
#     spaces_between_stars += 1
#   end 
# end

star(9) 