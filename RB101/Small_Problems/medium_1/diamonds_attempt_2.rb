# Write a method that displays a 4-pointed diamond
#  in an n x n grid, where n is an odd integer that 
#  is supplied as an argument to the method. 
#  You may assume that the argument will always
# be an odd integer.

=begin 

-input: integer (always odd)
-output: 4 point diamond  in an n x n grid 

-algorithim 

half = (n.to_f/2).ciel 

number_of_stars = 

first half = 
step from on to halfway at an increment of 2



=end 

# Examples

# diamond(1)

# *
# diamond(3)

#  *
# ***
#  *
# diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *


def diamond(n)


  1.step(by: 2, to: n) { |number_of_stars| puts (("*" * number_of_stars).center(9))}
  n.step(by: -2, to: 1) { |number_of_stars| puts (("*" * number_of_stars).center(9))}

end 

# def diamond(n)

#   half = (n.to_f/2).ceil 

#   1.upto(half) do |int|
#     if int > 1
#       puts ((("*" * int) + "**").center(n))
#     else
#       puts (("*").center(n))
#     end
#   end 
# end 

p diamond(9)