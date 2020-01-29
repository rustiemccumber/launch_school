# A collection of spelling blocks has two letters per block,
# as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just
# those words that do not use both letters from any given block.
# Each block can only be used once.

# Write a method that returns true if the word passed in as an 
# argument can be spelled from this set of blocks, false otherwise.

=begin 

input: string
output: boolean 

# problem domain: 
# - each block can only be used once

# mental model: 
# - write a method that returns true if the string passed in can be spelled
using spell from this set of blocks 

algorithm:

-create a nested array of the the blocks 
- downcase the input word
- iterate trhough the array, maping a new array
- iterate through each sub array with all? 
- if any of the characters items in the new array are true, return false

=end 

# Examples:

# block_word?('BATCH') == true
# block_word?('BUTCH') == false
# block_word?('jest') == true

ARRAY_BLOCKS = [['b','o'], ['x','k'], ['d','q'], ['c', 'p'], ['n','a'], ['g','t'], ['r', 'e'], ['f','s'], ['j','w'], ['h', 'u'], ['v','i'], ['l', 'y'], ['z', 'm'] ]

def block_word?(string)

  
  boolean_array = ARRAY_BLOCKS.map do |block|
    block.all? {|char| string.downcase.include?(char)}
  end 
  
  return false if boolean_array.any?
  true 

end 

p  block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
