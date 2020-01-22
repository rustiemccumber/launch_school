# A triangle is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length
# To be a valid triangle, the sum of the lengths of the two shortest sides must
# be greater than the length of the longest side, and all sides must have lengths 
# greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments, 
# and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on 
# whether the triangle is equilateral, isosceles, scalene, or invalid.

=begin
  
rules: 
- equilateral:  All 3 sides are of equal length
- isoscelse: 2 sides are of equal length, while the 3rd is difference 
- scale: All 3 sides are of different lengths 

valid triangle
- sum of the lengths of the two shortest sides must be greater than the length of the longest side
- all  sides must have lengths greater than 0 
  

triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

INPUT = 3 different numbers
OUTPUT = a symbol 

Algorithm

initialize and array (array_sides) and set it to point to the [side1, side2, side3]
sort the array

- if (array[0] + array[1]) <= array[2]
  :invalid
- if array.any?(0)
  :invalid 

=end


def triangle(side1, side2, side3)
  array_sides = [side1, side2, side3]
  array_sides.sort!

  if (array_sides[0] + array_sides[1]) <= array_sides[2] || array_sides.any?(0)
    :invalid
  elsif array_sides.all?(side1)
    :equilateral
  elsif array_sides[0] == array_sides[1] || array_sides[1] == array_sides[2]
    :isosceles
  elsif array_sides[0] != array_sides[1] || array_sides[1] != array_sides[2]
    :scalene
  end
end 

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
