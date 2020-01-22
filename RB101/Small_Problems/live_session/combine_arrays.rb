=begin
  
  Write a method that cobines two Arrays passed in as arguments, and rteurns new Array that contains all 
  all elements from both Array arguments, with the elements taken in alternation. 

  You may asssume that both input Arrays are non-empty, and that they have the same number of elements. 

  Example

  interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

  Input: two arrays
  Output: a combined array with alternate of elements of each individual array

  rules: same size arrays 

  Algorthim: 

  - create a loop do 
  - initialize a variable `counter` outside of the loop
  - initialize a variable `result_array` outside of the loop 
  - first iterate through the first array << curent number to result array
  - 2nd iterate through the second array << current number to the result array
  - return the result array 

=end 

def interleave(array_1, array_2)
  counter = 0 
  result_array = []

  loop do 
    result_array << array_1[counter]
    result_array << array_2[counter]

    counter += 1
    break if counter == array_1.size 
  end 

  result_array 
end 

p interleave([1, 2, 3], ['a', 'b', 'c'])

