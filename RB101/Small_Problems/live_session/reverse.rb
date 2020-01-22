
# write a method that reverses a string 

# input: String
# Output: reversed string

=begin
  
  - initalize a variable string_array
  - initialize a variable reversed_string, assign and empty string to it 
  - split the string into an array, assign this value to variable string_array
  -  string_array = string.split(" ")
  
  -iterate through the string_array starting from the last item of the array and ending on the first item of the array
    + use the shovel opperator on each item appending each item to the empty string empty_string << item 
=end 

def reverse(string)
  string_array = string.split("")
  reversed_string = ""
  (string_array.size - 1).downto(0) do |idx|
    reversed_string << string_array[idx]
  end
  reversed_string 
end 

p reverse('cats')