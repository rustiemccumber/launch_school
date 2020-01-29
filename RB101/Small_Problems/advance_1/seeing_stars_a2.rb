
#35
# Write a method that displays an 8-pointed star in an nxn grid,
# here n is an odd integer that is supplied as an argument to 
# the method. The smallest such star you need to handle is a 
# 7x7 grid.

=begin 

-input: odd integer
-output: an 8 point star with an nxn grid

-problem domain:  smalls grid is 7x7
input number all ways positive 



algorithim: 

-first line will be three stars with (n-3/ 2) spaces inbetween
-spaces_between = (n-3)/2
-1.upto(n/2) do  
  puts "*" + (" " * spaces_between) + "*" + (" " * spaces_between) + "*"
  spaces_between -= 1


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

def star(n)
  spaces_between = (n-3)/2
  
  1.upto(n/2) do
    puts ("*" + (" " * spaces_between) + "*" + (" " * spaces_between) + "*").center(n)
    spaces_between -= 1 if spaces_between != 0
  end 
   puts ("*" * n)
  1.upto(n/2) do
    puts ("*" + (" " * spaces_between) + "*" + (" " * spaces_between) + "*").center(n)
    spaces_between += 1 
  end 
end

star(7)
