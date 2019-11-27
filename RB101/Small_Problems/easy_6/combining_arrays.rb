=begin

Write a method that takes two Arrays as arguments, and returns an Array that contains all 
of the values from the argument Arrays. There should be no duplication
of values in the returned Array, even if there are duplicates in the original Arrays.


-input two arrays
interate through array 2nd using select
array_new 
if array_2.include?(char)  == false
  array_1 << char 
end 
array_1.sort

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

=end 

def merge(array_1, array_2)
  array_2.select {|char| array_1 << char}
  array_1.sort.uniq
end 

p merge([1, 3, 5], [3, 6, 9])