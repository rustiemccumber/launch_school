# Create a method that takes two integers as arguments. 
# The first argument is a count, and the second is the 
# first number of a sequence that your method will create.
# The method should return an Array that contains the same 
# number of elements as the count argument, while the values 
# of each element will be multiples of the starting number.

# You may assume that the count argument will always have a value 
# of 0 or greater, while the starting number can be any integer value. 
# If the count is 0, an empty list should be returned.

=begin 

-input: two integers
 +first integer is the count 
 + second iteger is the first number that your iteger will 
 create, values will each be multiples of the staring number 

-output: an array, with count elements and each element a multiple
of the starting number 

algorithm:

1.upto(int_1) {|num| result << (int_2 * num)}


=end 

# Examples:

# sequence(5, 1) == [1, 2, 3, 4, 5]
# sequence(4, -7) == [-7, -14, -21, -28]
# sequence(3, 0) == [0, 0, 0]
# sequence(0, 1000000) == []


def sequence(int_1, int_2)
  result = []
  1.upto(int_1) {|num| result << (num * int_2)}
  result 
end 

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []

