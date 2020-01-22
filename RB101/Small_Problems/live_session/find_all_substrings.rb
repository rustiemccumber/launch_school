# write a method that finds all substrings in a string. No 1 letter words

=begin

- input: string
- output:  all substrings of the string

initialize a variable to store the current ending number
  - set equal to 1
initialize a variable to store the current starting number 
  - set equal to 0 

slice from the first number to the ending number
increment the ending number by one, if the ending number = array.size 
  - starting_number += 1
  - ending_number = starting_number + 1


  
=end

# p substrings("band") 
# p substrings("world")
# p substrings("ppop")

def substrings(string)

  starting_index = 0
  ending_index = 1
  substrings_array = []

  loop do 
    break if starting_index == (string.size - 1)
    substrings_array << string[starting_index..ending_index]
    ending_index += 1
    if ending_index == string.size 
      starting_index += 1
      ending_index = starting_index + 1
    end 
  end 
  substrings_array
end 

# p substrings("band") 
# p substrings("world")
# p substrings("ppop")

=begin

write a method that will return all palindromes within a string. 

us the substring method above 

loop through the return array, select the words where word = word.reverse 
  
=end 

def palindromes(string)
  
  array_of_substrings = substrings(string)
  array_of_substrings.select { |word| word == word.reverse}

end 

# write a method that finds the largest substring palindrome from a string


p palindromes("band") 
p palindromes("world")
p palindromes("ppop")
