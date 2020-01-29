# 18
#Given an integer n, find the maximal number
# you can obtain by deleting exactly one digit 
# of the given number.

# Example
# For n = 152, the output should be 52;

# For n = 1001, the output should be 101.

# Input/Output
# [input] integer n

# Constraints: 10 ≤ n ≤ 1000000.

# [output] an integer

=begin 

- Input: integer
- Output: integer
  + which is the max integer that exists by deleting on digit

-problem domain: 10 ≤ n ≤ 1000000.

- convert the integer into a string

- intitialize an empty array

create a loop 
split the string into an array of chars within the loop 
that deletes the current character, joins the array and pushes 
the joined array to an empty array
max_by on the array

=end 

def max_delete(n)

  array = []
  idx = 0

  n.to_s.chars.each_with_index do |_char, idx| 
     
     array_chars = n.to_s.chars
     array_chars.delete_at(idx)
     array << array_chars.join.to_i

  end 
  array.max
end 


p max_delete(152)

p max_delete(1001)