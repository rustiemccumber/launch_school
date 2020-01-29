=begin

create method that takes one arguement and returns the average of array

-input
 - array of numbers (never negative or empty)
output 
 - average of all numbers in array 

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

=end 
=begin
def average(ary)


 sum = 0
 ary.each {|x| sum += x}
 sum / ary.length

end
=end 

def average(ary)

  sum = ary.reduce(:+)
  sum/ary.count

end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

