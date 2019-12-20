# A stream of data is received and needs to be reversed.
# 
# Each segment is 8 bits long, meaning the order of these
# segments needs to be reversed, for example:
# 
# 11111111  00000000  00001111  10101010
# (byte1)   (byte2)   (byte3)   (byte4)
# 
# should become:
# 
# 10101010  00001111  00000000  11111111
# (byte4)   (byte3)   (byte2)   (byte1)
# 
# The total number of bits will always be a multiple of 8.
# 
# The data is given in an array as such:
# 
# [1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,1,0,1,0,1,0] == [1,0,1,0,1,0,1,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1]

# [0,0,1,1,0,1,1,0,0,0,1,0,1,0,0,1] == [0,0,1,0,1,0,0,1,0,0,1,1,0,1,1,0]

# [0,0,1,1,0,1,1,0,0,0,1,0,1,0,0,1,0,0,1,1,0,1,1,0,0,0,1,0,1,0,1,1,0,0,1,1,0,1,1,1] == [0,0,1,1,0,1,1,1, 0,0,1,0,1,0,1,1, 0,0,1,1,0,1,1,0, 0,0,1,0,1,0,0,1, 0,0,1,1,0,1,1,0]



# input:
# output:
# - ALGORITHM:


# -INPUT:  a flat array contain numbers, which are groups of 8 byte segments
# -OUTPUT: the position of each 8 byte segment reversed in the array 

# RULES
# -Total number of bytes will always be a mult of 8

# DATA STRUCTURE: 
# INPUT = ARRAY 
# OUTPUT = ARRAY

# ALGORITHM:

# -Look at the array and break the items given in the array into seperate individual
# objects of 8 bytes.  (Array, or integer)
# - once you have the array broken into segments, call reverse on the array
# - once the array is reverse you need return it to a flattened array 

# option 1:
# initialize empty array res
# initialize empty subarray

# iterate through the array moving each number from the original array to the 
# second array until the counter = 8, increment counter with each item 

# use each to itegerate through the array
# move each to the sub array
# with each iteration increment counter
# when counter = 8 push the subarray to the res array
# when counter = 8 clear the sub array 
# return res array.reverse.flatten 

# def bytes_reverse(array)
#   #require 'pry'
#   #binding.pry 
#   res = []
#   subarray = []
#   counter = 0
#   array.each do |num|
#     if counter <= 7
#       subarray << num
#       counter += 1
#     elsif counter == 8 
#       res << subarray 
#       subarray = []
#       counter = 0
#     end
#   end 
#  res
# end 


# def bytes_reverse(array)

#   res = []
#   subarray = []
#   until array.empty?
#     subarray = []
#     8.times {subarray << array.shift}
#     res << subarray
#   end
#   res.reverse.flatten 
# end 

# def bytes_reverse(array)
#   res = []
#   subarray = []
#   indx = 0 
#   counter = 0 
#   loop do
#     break if indx == array.size 
#     if counter <= 7
#       subarray << array[indx]
#       indx += 1
#       counter += 1
#     elsif counter == 8 
#       res << subarray 
#       subarray = []
#       counter = 0 
#     end 
#   end 
#   res
# end

=begin
other option
- find the amount of sets in the array (array.size/8)
- the number of times of sets do , 8 times subarray << current number 

=end 
# 11111111  00000000  00001111  10101010
def bytes_reverse(array)
  results = []
  subarray = []

  (array.size/8).times do 
    8.times {subarray << array.shift}
    results << subarray 
    subarray = []
  end 
  results.reverse.flatten
end


p bytes_reverse([1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,1,0,1,0,1,0]) == [1,0,1,0,1,0,1,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1]
p bytes_reverse([0,0,1,1,0,1,1,0,0,0,1,0,1,0,0,1]) ==[0,0,1,0,1,0,0,1,0,0,1,1,0,1,1,0]
p bytes_reverse([0,0,1,1,0,1,1,0,0,0,1,0,1,0,0,1,0,0,1,1,0,1,1,0,0,0,1,0,1,0,1,1,0,0,1,1,0,1,1,1]) == [0,0,1,1,0,1,1,1, 0,0,1,0,1,0,1,1, 0,0,1,1,0,1,1,0, 0,0,1,0,1,0,0,1, 0,0,1,1,0,1,1,0]
