# A triangle is classified as follows:

# right One angle of the triangle is a right angle (90 degrees)
# acute All 3 angles of the triangle are less than 90 degrees
# obtuse One angle is greater than 90 degrees.
# To be a valid triangle, the sum of the angles must be exactly 180 degrees,
#  and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol 
# :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, 
# obtuse, or invalid triangle.

# You may assume integer valued angles so you dont have to worry about floating point errors.
# You may also assume that the arguments are specified in degrees.

# Examples:

# triangle(60, 70, 50) == :acute
# triangle(30, 90, 60) == :right
# triangle(120, 50, 10) == :obtuse
# triangle(0, 90, 90) == :invalid
# triangle(50, 50, 50) == :invalid


=begin 

-input: 3 angles of the triangle:
-output: what type of triangle it is
  + :acute = all 3 angles are less than 90 
  + :right = one angle is 90s
  + :obtuse = one angle is greater than 90 degres 
  + :invalid = if sum of angles is not 180, or if one of the angles is zero 


Algorthim 

array_angles = [angle1, angle2, angle3]

max_angle = array_angle.max 


if array_angles.sum != 180 || array_angles.any?(0)
  :invalid 

elsif array_angles.all? { |angle| angle < 90}
  :acute 

elsif array_angles.any?(90)
  :right

elsif array_angles.any? {|angle| angle > 90 }
  :obtuse 

=end 

def triangle(angle1, angle2, angle3)

  array_angles = [angle1, angle2, angle3]
  max_angle = array_angles.max 

  if array_angles.sum != 180 || array_angles.any?(0)
    :invalid 
  elsif array_angles.all? { |angle| angle < 90}
    :acute 
  elsif array_angles.any?(90)
    :right
  elsif max_angle > 90 
    :obtuse 
  end 
end 

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
