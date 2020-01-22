=begin

write a method that takes and array of strings, and returns an array of the sam
string values, except with the vowels removed. 

- INPUT: array of strings
- OUTPUT: array of strings with the vowels removed 

- Rules:

- edge cases: upercase too?

- intialize a variable and set it equal to the return value of the `map` method call on the array of strings

- iterate through the original array of strings using 'map' pass in a block that deletes any values from the current
word.


=end

def remove_vowels(array)
  removed_vowels = array.map do |word|
    word.delete('/[aeiou]/')
  end 
end

p array = [ 'green', 'yellow', 'black', 'white']

p remove_vowels(array)

p array 