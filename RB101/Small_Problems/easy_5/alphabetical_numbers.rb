=begin
Write a method that takes an Array of Integers 
between 0 and 19, and returns an Array of those 
Integers sorted based on the English words for each number:

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

=end 

NUMBERS = (0..19).to_a
LETTER_ARRAY = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", 
"twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

def alphabetic_number_sort(number_array)

hash_word_number = Hash[NUMBERS.zip LETTER_ARRAY]
array_of_words = []
sorted_array_of_numbers = []
  number_array.each do |number|
    array_of_words << hash_word_number[number]
  end
array_of_words.sort!
  array_of_words.each do |word|
    sorted_array_of_numbers << hash_word_number.key(word)
  end
sorted_array_of_numbers
end 

p alphabetic_number_sort((0..19).to_a)
