=begin

Write a method that takes an Array of numbers and then returns the sum of the sums
of each leading subsequence for that Array. You may assume that the Array always 
contains at least one number.

-input: array of numbers
-output: sum of sum of leading subsequenece
  - first + (first + second) + (first + second + third)...

alogorithm: 
each
initilize sum = 0
-interate through array with each
-add sum += (sum + current num)

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35
  
=end
=begin 

def sum_of_sums(arr)
  sum = 0
  current_range = 0 
    arr.each_with_index do |num|
      current_range += num 
      sum += current_range
    end 
  sum
end 
=end 

def sum_of_sums(array)
  sum_total = 0
   array.each_with_index do |num, position|
     sum_total += array.slice(0, (position +1)).reduce(:+)
  end
  sum_total
end

p sum_of_sums([3, 5, 2]) 
p sum_of_sums([1, 5, 7, 3])
p sum_of_sums([4])
p sum_of_sums([1, 2, 3, 4, 5])