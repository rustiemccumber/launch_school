=begin 
Write a method named include? that takes an Array and a search value as arguments. This method 
should return true if the search value is in the array, false if it is not. 
You may not use the Array#include? method in your solution.

loop through array, if 

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

=end

def include?(array, value)
  !!array.find_index(value)
end

include?([1,2,3,4,5], 3)