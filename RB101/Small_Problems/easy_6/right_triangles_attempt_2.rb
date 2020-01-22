# Write a method that takes a positive integer, n, as an 
# argument, and displays a right triangle whose sides each 
# have n stars. The hypotenuse of the triangle (the diagonal 
#   side in the images below) should have one end at the
#    lower-left of the triangle, and the other end at the
#     upper-right.

=begin 

-input: integer ( number of starts)
-output: right triangle composed of stars with the base being
the integer number of stars 

algorithim:

number_of_stars = 1 
number_of_spaces = n - number_of_stars

Loop do 
  # string concationation with number of spaces + number of stars
  # 
end 

=end 

# Examples:

# triangle(5)

#     *
#    **
#   ***
#  ****
# *****
# triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********

def triangle(n)

  number_of_stars = 1
  number_of_spaces = n - 1

  loop do 
    puts  (' ' * number_of_spaces) + ('*' * number_of_stars)
    number_of_stars += 1 
    number_of_spaces -= 1
    break if number_of_stars > n 
  end 

end

# def triangle(num)
#   spaces = num - 1
#   stars = 1

#   num.times do |n|
#     puts (' ' * spaces) + ('*' * stars)
#     spaces -= 1
#     stars += 1
#   end
# end

triangle(9)
triangle(5) 