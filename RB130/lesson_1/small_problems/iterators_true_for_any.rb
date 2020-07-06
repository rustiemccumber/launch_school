# the `Enumerable#any?` method processes elemetns in a collection by
# passing each element value to a block that is provided in the 
# method call.  It the block returns a value of `true` for any element, the
# `#any?` returns true.   Otherwise `#any? returns false.  NOte in particular
# that `#any?` will stop searching the collection the first time the blokc
# returns `true`.

#  Write a method called `any?` that behaves similarly for Arrays.  It should 
#  take an Array as an argument, and a block.  It should return `true`
# if the block returns `true` for any of the element values. otherwise, it should
# return `false`.  
# Your method should stop processing elements of the Array as soon as 
# the block returns `true`

#   if the Array is empty `any?` should return false, regardless of how the block 
#   is defined. 

#   your method may not use any standard ruby method that is named `all?` , `any?`, `non?` or `one?`

#   examples:

def any?(array)
  array.each do |element|
    return true if yield(element)
  end
  false 
end 



puts any?([1, 3, 5, 6]) { |value| value.even? } == true
puts any?([1, 3, 5, 7]) { |value| value.even? } == false
puts any?([2, 4, 6, 8]) { |value| value.odd? } == false
puts any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
puts any?([1, 3, 5, 7]) { |value| true } == true
puts any?([1, 3, 5, 7]) { |value| false } == false
puts any?([]) { |value| true } == false

