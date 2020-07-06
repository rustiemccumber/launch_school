
#zipper
# the `array#zip` method takes two arrays, and combines them into 
# a single array in which each element is a two-elment array where
# the frist element is a vlur from each from one array, and the second
# element is a value from the second array, in order.  For example:

#[1, 2, 3].zip([4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]

# Write your own version of zip that does the same type of 
# operation. It should take two Arrays as arguments, and 
# return a new Array (the original Arrays should not be 
# changed). Do not use the built-in Array#zip method. You 
# may assume that both input arrays have the same number of
#  elements.


def zip(array_1, array_2)
  array_1.map.with_index do |current_value, idx|
    [current_value, array_2[idx]]
  end
end

p zip([1, 2, 3], [1, 2, 3])