# 3:19 
# a triangle is classified as: 
#equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while 
# the 3rd is different scalene All 3 sides are 
# of different length To be a valid triangle, 
# the sum of the lengths of the two shortest sides 
# must be greater than the length of the longest side, 
# and all sides must have lengths greater than 0: if 
# either of these conditions is not satisfied, the 
# triangle is invalid.

# Write a method that takes the lengths of the 3 sides of 
# a triangle as arguments, and returns a symbol :equilateral, 
# :isosceles, :scalene, or :invalid depending on whether the 
# triangle is equilateral, isosceles, scalene, or invalid.

=begin 

-input: 3 integers
  + which represent each side of the triangles
-output: symbol (:equilateral, :isoscles, :scalene, :invalid )

problem domain:  a valid triange:
   - the sum of the lengths of the two shortest sides must be greater
   than the length of the longest side
   - all sides must have lengths greater than zero

Algorithm: 
 - make a method that checks to see if it is a valid triangle

put the side_1, side_2, and side_3 into an array
sory the array. 



 write a case statment 
  if any?(0) || ((array[-1] +array[-2]) < array[0])
    :invalid
  if side_1 == side_2 && side_2 == side_3
    :equilateral 
  eslif side_1 != side_2 && side_2 != side_3 && side_1 != side_3
    :scalene 
  else
    :isosclese



=end 

# Examples:

# triangle(3, 3, 3) == :equilateral
# triangle(3, 3, 1.5) == :isosceles
# triangle(3, 4, 5) == :scalene
# triangle(0, 3, 3) == :invalid
# triangle(3, 1, 1) == :invalid


def triangle(side_1, side_2, side_3)

  array_sides = [side_1, side_2, side_3]

  sorted_array = array_sides.sort 

  if sorted_array.any?(0) || ((sorted_array[0] + sorted_array[1]) < sorted_array[-1])
    :invalid 
  elsif (side_1 == side_2) && (side_2 == side_3)
    :equilateral
  elsif side_1 != side_2 && side_2 != side_3 && side_1 != side_3
    :scalene 
  else
    :isosceles
  end 

end 

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
