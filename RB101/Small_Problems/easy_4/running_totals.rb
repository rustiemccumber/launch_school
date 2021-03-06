=begin
Write a method that takes an Array of numbers, and returns an Array with the same 
number of elements, and each element has the running total from the original Array.

-input: Array of numbers
-output: Array of numbers with same number of elements but with running total

algorithm
-iterate through numbers, adding the most recent number to the last
 -inject sum into new array

ex
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []
=end
=begin

def running_total(array)
  running_array = []
  accumulator = 0 
  array.each do |num|
    accumulator += num
    running_array << accumulator   
  end 
  running_array 
end
=end
=begin
def running_total(array)
  sum = 0
  array.each_with_object([]) { |i, a| a << sum += i  }
end

p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20]) 
p running_total([3]) 
p running_total([])
=end

# def running_total(array)
# sum_array = []
# array.inject { |sum, n| sum_array << sum + n } 
# sum_array
# end

# p running_total([2, 5, 13])
# p running_total([14, 11, 7, 15, 20]) 
# p running_total([3]) 
# p running_total([])

#-----------------------------------------------
# new attempt after several months 


# Write a method that takes an Array of numbers,
# and returns an Array with the same number 
# of elements, and each element has the running 
# total from the original Array.

# Examples:

# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

=begin

-input: array of numbers
-output: running total of array of numbers 

questions:

problem domain: returns an array with the same number of elements

algorithim:

inject starting with 0 and add each element a new array
return the new array 



=end 

# def running_total(array)
  
#   new_array = []

#   array.inject(0) {|sum, n|  new_array << sum + n }

#   new_array 

# end 

require 'pry'
require 'pry-byebug'

def running_total(array)
  binding.pry
  sum_array = []
  array.inject do |sum, n| 
    sum_array << sum + n 
  end 
  sum_array
end



p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
