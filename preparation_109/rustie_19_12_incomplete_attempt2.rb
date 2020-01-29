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

=begin 

input: array of numbers
output: reversed array of numbers 

algorithm: 

- initialize an empty array 
- initialize a counter and set it to point to zero 
- turn the array into a nested array 
  + iterate through the array with each
    - increment the counter with each iteration 
    - result_array << sub_array if counter == 8 
    - sub_array = [] if counter == 8 
    - counter = 0 if counter == 8 
    - return the result_array, reverse and flatten 

=end 

def bytes(array)

  counter = 0 
  sub_array = []
  result_array = []

  array.each do |number|
    sub_array << number 
    counter += 1
    (result_array << sub_array) if counter == 8
    sub_array = [] if counter == 8
    counter = 0 if counter ==8 
  end  

  result_array.reverse.flatten
end 




p bytes([1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,1,0,1,0,1,0]) == [1,0,1,0,1,0,1,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1]

p bytes([0,0,1,1,0,1,1,0,0,0,1,0,1,0,0,1]) == [0,0,1,0,1,0,0,1,0,0,1,1,0,1,1,0]

p bytes([0,0,1,1,0,1,1,0,0,0,1,0,1,0,0,1,0,0,1,1,0,1,1,0,0,0,1,0,1,0,1,1,0,0,1,1,0,1,1,1]) == [0,0,1,1,0,1,1,1, 0,0,1,0,1,0,1,1, 0,0,1,1,0,1,1,0, 0,0,1,0,1,0,0,1, 0,0,1,1,0,1,1,0]