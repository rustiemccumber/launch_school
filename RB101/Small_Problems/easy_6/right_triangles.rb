=begin 
Write a method that takes a positive integer, n, as an argument,
 and displays a right triangle whose sides each have n stars. 
 The hypotenuse of the triangle (the diagonal side in 
  the images below) should have one end at the lower-left of the triangle, 
 and the other end at the upper-right.

 triangle(5)

    *
   **
  ***
 ****
*****

=end 
def triangle(number)
  number_of_stars = 1
  number_of_spaces = number - 1 
  while number_of_stars <= number 
    p (" " * number_of_spaces) + ("*" * number_of_stars)
    number_of_stars += 1
    number_of_spaces -= 1
  end 
end 

triangle(5)
triangle(9)