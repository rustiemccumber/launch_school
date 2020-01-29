# You are given an array which contains only integers (positive
# and negative). Your job is to sum only the numbers that are
# the same and consecutive. The result should be one array.
# 
# You can assume there is never an empty array and there will
# always be an integer.
#  
# Examples:
# ---------
# sum_consecutives([1,4,4,4,0,4,3,3,1]) == [1,12,0,4,6,1]
# sum_consecutives([1,1,7,7,3]) == [2,14,3]
# sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]
# sum_consecutives([1]) == [1]
# sum_consecutives([-1]) == [-1]


=begin

input:array
output: array
-with consecutive number that are the same summed
-if the number is not followed by itself, no sum, return number

algorithm

- initiate an empty result array
-iterate through array each with index 
-set current number = sum
-if the number following  == current number 
 + 
-else return the number to a new array


=end






def sum_consecutives(arr)
  result = []
  counter = 0
  loop do
    if arr[counter] == arr[counter + 1]
      result << [arr[counter]].sum(arr[counter + 1])
      counter += 1
    elsif
      counter > 0 && arr[counter] == arr[counter - 1]
      result << [result.pop].sum(arr[counter])
    else
      result << arr[counter]
    end
    counter += 1
    break if counter == arr.size
  end
  result
end

#p sum_consecutives([1, 2, 2])
p sum_consecutives([1,4,4,4,0,4,3,3,1]) #== [1,12,0,4,6,1]
p sum_consecutives([1,1,7,7,3]) == [2,14,3]
p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]
p sum_consecutives([1]) == [1]
p sum_consecutives([-1]) == [-1]
