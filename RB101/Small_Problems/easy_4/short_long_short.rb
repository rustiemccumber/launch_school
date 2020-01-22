=begin 

Write a method that takes two strings as arguments, determines the longest of the two strings,
and then returns the result of concatenating the shorter string, the longer string, 
and the shorter string once again. You may assume that the strings are of different lengths.

-write definition that takes too inputs

-input 2 strings:
  -one shorter string (xyz)
  -one longer string  (abcdef)

-out put
 -concatenating pattern of shorter-longer-shorter

 -algorythim
  -find string size
  -compare string 
  -string_short + string_long + string_short

 example
 xyzabcdefxyz

=end 

# THIS WAS THE FIRST ATTEMPT WHICH I DID WHEN GOING THROUGH THE PROBLEMS
# THE FIRST TIME 

# def short_long_short(string1, string2)

#   if string1.size > string2.size
#     string2 + string1 + string2
#   else 
#     string1 + string2 + string1
#   end

# end 

# p short_long_short("xyz", "abcdef")

# SECOND ATTEMPT MONTHS LATTER 

=begin 

Write a method that takes two strings as arguments, 
determines the longest of the two strings, and then 
returns the result of concatenating the shorter string,
the longer string, and the shorter string once again. 
You may assume that the strings are of different lengths.

Examples:

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

- input: two strings, one shorter and one longer 
- ouput: concationation of shorter_string, longer_string, and shorter_string

questions: 

problem domain: you may assume strings of of different lengths

algorithm:

- put string one and string two into an array 
- sort the array by the length 

contonate 

=end 

def short_long_short(string_1, string_2)
  
  array = [string_1, string_2]

  sorted_array = array.sort_by {|string| string.length}

  result = sorted_array[0] + sorted_array[1] + sorted_array[0]
  
end 

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"




