
=begin 

Write a method which takes a grocery list (array) of fruits with quantities and 
converts it into an array of the correct number of each fruit.

-input: nested array
 - sub-array: [fruit type, fruit quanity]
  -output: flat array with fruit type repeated fruit quanity times 

algortithm 

- iterate through nested array, map a new array
  - subarray[1].times {|x| subarray[0]}



buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
=end 
require "pry"

def buy_fruit(array)
  new_array = []
  array.each do |subarray|
    subarray[1].times {new_array << subarray[0]} 
    binding.pry
  end 
  new_array
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])