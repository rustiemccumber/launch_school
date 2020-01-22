# Write a method that returns a list of all substrings
# of a string. The returned list should be ordered by 
# where in the string the substring begins. This means
# that all substrings that start at position 0 should 
# come first, then all substrings that start at position 1,
# and so on. Since multiple substrings will occur at each position, 
# the substrings at a given position should be returned in order from 
# shortest to longest.

=begin 

-input: array
-output: array of all substrings 

-algorithim

create a new method definition, substrings

duplicate the string array 

initialize a result array 

within substrings create a loop 

until the array is empty

  do substrings_at_start

 result << substring_at_start

return result_array.flatten 

unshift the first character 


=end 

# You may (and should) use the substrings_at_start method you wrote in the previous exercise:

# Examples:

# substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde', 
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]


def substrings_at_start(string)

  substring = ""
  result = []

  string.map do |element| 
    substring += element
  end 
end 


def substrings(string)

  string_copy = string.dup.chars
  final_result = []
  
  until string_copy.empty? do 
    final_result << substrings_at_start(string_copy)
     string_copy.shift
   end 
   final_result.flatten
end 


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
