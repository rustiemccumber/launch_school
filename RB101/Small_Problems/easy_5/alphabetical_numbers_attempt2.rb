# Write a method that takes an Array of Integers between 0 
# and 19, and returns an Array of those Integers sorted
# based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

=begin 

-input: array (0 - 19 )
- output: sorted array based on english words for each number 


=end 

# Examples:

# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0]

WORDS_NUMBERS = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(array)

  sorted_array = array.sort_by {|idx| WORDS_NUMBERS[idx]}

end 


p alphabetic_number_sort((0..19).to_a) #== [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]