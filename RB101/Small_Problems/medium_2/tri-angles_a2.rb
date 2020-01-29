# A triangle is classified as follows:

# right one angle of the triangle is a right angle (90 degrees)
# acute All 3 angles of the triangle are less than 90 degrees
# obtuse One angle is greater than 90 degrees.
# To be a valid triangle, the sum of the angles must be exactly 180 degrees, 
# and all angles must be greater than 0: if either of these conditions is not satisfied,
# the triangle is invalid.

# Write a method that takes the 3 angles of a triangle as arguments, 
# and returns a symbol :right, :acute, :obtuse, or :invalid depending 
# on whether the triangle is a right, acute, obtuse, or invalid triangle.

# You may assume integer valued angles so you don't have to worry 
# about floating point errors. You may also assume that the arguments 
# are specified in degrees.

=begin 

input: 3 integers
  + angles of a triangle
output: wether those are :acute, :right, :obtuse, :invalid

- problem domain: all are intger values, specified in degrees

Algorithm: 

initialize an array and set it to point to an array of all the angles

write a case statement
that returns :invalid if any?(0) or is inject(:+) != 180
:right if any?(90)
:obtuse if any? { |angle| angle > 90}
:esle 
  :acute 

=end 

# Examples:

# triangle(60, 70, 50) == :acute
# triangle(30, 90, 60) == :right
# triangle(120, 50, 10) == :obtuse
# triangle(0, 90, 90) == :invalid
# triangle(50, 50, 50) == :invalid


def triangle(angle_1, angle_2, angle_3)
  
  array_angles = [angle_1, angle_2, angle_3]

  case 
  when array_angles.any?(0) || array_angles.inject(:+) != 180
    :invalid
  when array_angles.any?(90)
    :right
  when array_angles.any? {|angle| angle > 90}
    :obtuse 
  else
    :acute
  end 

end 

p triangle(60, 70, 50) == :acute
p  triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
