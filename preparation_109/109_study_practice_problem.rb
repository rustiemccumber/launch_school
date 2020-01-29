# Given the string of chars a..z A..Z do as in the sample cases

#p accum("RqaEzty") == "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
#p accum("cwAt")    == "C-Ww-Aaa-Tttt"

=begin
  -input: string 
  -output: string with 
    - "-" between each char set 
    -capitilze first char of each subset
    -as subset continues add index * char to each char subset

alg
  -downcase string 
  -initialize an empty string 
  -split string into chars
  -iterate through the array (each_with_index)
   - if index == 0 empty string << char.capitalize 
     else 
      empty_string << "-" + char.capitalize + char * index
  -return empty_string 

  
=end 



def accum(string)
  array = string.downcase.chars
  output_string = ''
  array.each_with_index do |char, index|
    if index == 0
      output_string << char.capitalize
    else
      output_string << "-" + char.capitalize + (char * index)
    end
  end 
  output_string
end 


p accum("abcd")    == "A-Bb-Ccc-Dddd"
p accum("RqaEzty") == "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
p accum("cwAt")    == "C-Ww-Aaa-Tttt"

=begin
# You are going to be given an array of integers. Your job is to take that array and find an
# index N where the sum of the integers to the left 
#of N is equal to the sum of the integers to the right of N. 
#If there is no index that would make this happen, return -1.

-input: 

# For example:

# Let's say you are given the array [1,2,3,4,3,2,1]:
# Your method will return the index 3, because at the 3rd position of the array
#, the sum of left side of the index [1,2,3] and the sum of the right side of the index [3,2,1] both equal 6.

p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
=end


def find_even_index(numbers)
  0.upto(numbers.length - 1) do |idx_result|
    left_subarray = idx_result == 0 ? [] : numbers[0...idx_result]
    right_subarray = idx_result == numbers.length - 1 ? [] : arr[(idx_result + 1)..(numbers.length - 1)]
    return idx_result if left_subarray.sum == right_subarray.sum
  end
  -1
end