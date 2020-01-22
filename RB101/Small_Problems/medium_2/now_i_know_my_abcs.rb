=begin
A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that
do not use both letters from any given block. Each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled 
from this set of blocks, false otherwise.

Examples:

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

INPUT: String
OUTPUT: boolean (true or false)

RULES

- the string cannot use both values in a block

Alogortithm

- initialize a variable and set equal to it the nested array [[B,O], [X, K], [C, P], [N, A], [G, T], [R, E], [F,S], [J,W], [H, U], [V, I], [L, Y], [Z, M]]

- loop through the nested array using each_with_index.  

if string.count(current_subarray[0]) >= 1 && string.count(current_subarray[1] >=1 )
  false
eslif string.count(current_subarray[0]) > 1 || string.count(current_subarray[1] > 1)
  fasle
else 
  true
es

=end 

def block_word?(string)

  lower_string = string.downcase

  blocks = ['bo', 'xk', 'cp', 'na', 'gt', 're', 'fs', 'jw', 'hu' , 'vi' , 'ly' , 'zm']
  blocks.all? do |block| 
    lower_string.count(block) <= 1 
  end
end
   
p block_word?('BATCH') 
p block_word?('BUTCH')
p block_word?('jest') 
