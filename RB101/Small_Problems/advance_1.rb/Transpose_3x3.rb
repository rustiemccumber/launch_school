# Write a method that takes a 3 x 3 matrix in Array of Arrays format 
# and returns the transpose of the original matrix. Note that there 
# is a Array#transpose method that does this -- you may not use it for this exercise.
# You also are not allowed to use the Matrix class from the standard library. 
# Your task is to do this yourself.

# Take care not to modify the original matrix: you must produce a new matrix 
# and leave the original matrix unchanged.

# Examples

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# new_matrix = transpose(matrix)

=begin

-initialize 3 different variables and assign empty arrays to them  

- initiailze a 4th empty array to append all the empty arrays to 

-Loop from one subarray to next each subarray array with `each` 

-loop through subarray `each_with_index`, << values with index [0] to empty_array_1, index [1] to empty_array_2, 
index [2] to array_3

- append all the empty arrays to the 4th empty array


=end 

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]


# def transpose(input_matrix)

#   row_1 = []
#   row_2 = []
#   row_3 = []

#   transposed_array = []

#   input_matrix.each do |subarray|
#     subarray.each_with_index do |num, idx|
#       case idx
#       when 0 then row_1 << num
#       when 1 then row_2 << num
#       when 2 then row_3 << num 
#       end 
#     end
#   end
#   transposed_array << row_1
#   transposed_array << row_2
#   transposed_array << row_3

#   transposed_array
# end 

# ALTERNATE METHOD AND ALGORITIM
=begin

- use 0.to(2) do |row_idx|
  + goes from one row to the next 
- create an inner loop
  0.to(2) do |column_indx|
- empty_array << matrix[column_idx][row_indx]

add empty_array to the result array 

=end

# def transpose(input_matrix)
#   result = []
#   new_row = []

#   0.upto(2) do |row_idx|
#     0.upto(2) do |column_idx|
#       new_row << input_matrix[column_idx][row_idx]
#     end
#     result << new_row
#     new_row = []
#   end
#   result
# end 

# matrix = [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# new_matrix = transpose(matrix)

# p new_matrix #== [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix #== [[1, 5, 8], [4, 7, 2], [3, 9, 6]]


# TRANSPOSE FURTHER EXPLORATION 

# Write a transpose! method that transposes a matrix in place. 
# The obvious solution is to reuse transpose from above, then copy the 
# results back into the array specified by the argument. 
# For this method, don't use this approach; write a method from scratch
# that does the in-place transpose.

=begin

do multiple reassignment 

matrix[0][1], matrix[0][2], matrix[1][2] = matrix[1][0], matrix[2][0], matrix[2][1]

end 

  
=end 

def transpose!(matrix)

  matrix[0][1], matrix[1][0] = matrix[1][0] , matrix[0][1]
  matrix[0][2], matrix[2][0] = matrix[2][0] , matrix[0][2]
  matrix[1][2], matrix[2][1] = matrix[2][1] , matrix[1][2]
  matrix
end 


matrix = [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

new_matrix = transpose(matrix)

p new_matrix #== [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix
