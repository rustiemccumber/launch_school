#write a method that takes a sorted array of integers as an argument,
# and returns an array that inlcudes all of the missing intgers (in order)
# between the first and last elments of the arugmnet.

def missing(array)
  first = array.first
  last = array.last 
  full_array = []
  first.upto(last) { |num| full_array << num }
  full_array - array 
end 


puts missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
puts missing([1, 2, 3, 4]) == []
puts missing([1, 5]) == [2, 3, 4]
puts missing([6]) == []