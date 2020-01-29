#1:05
#Write a method which takes an array of lowercase string letters (a-z)
#and returns the letter which all of the letters add up to.
#For example, a => 1, b => 2, c => 3, so,
#letter_add(['a', 'b', 'c']) => 'f'
#If the total value of your letters exceeds 26, start counting the excess again from 0.
#For example, 'y' => 25, 'c', => 3, 'b' => 2 so,
#letter_add(['y', 'c', 'b']) => 'd' 
#if an empty array is given, the method should return 'z'
#You may assume that all elements will be lowercase letters a-z



# -input: array of letters
# -ouput: a single letter
#   + the letter is the sum of the letters in the array 
  
# -problem: domain: if the array empty return z, all elemetns will be lowercase leters a-z

# -algorithm:

#   - initialize an array of the alphabet
#   - initialize a local variable and set to 0 
  
#   -iterate through the input array, using each with index 
#    + sum the index value of each number and update the local variable with this number




#Examples:
#add_letters(['a', 'b', 'c']) = 'f'
#add_letters(['a', 'b']) = 'c'
#add_letters(['z']) = 'z'
#add_letters(['z', 'a']) = 'a'
#add_letters(['y', 'c', 'b]) = 'd' # notice the letter value overflowing
#add_letters([]) = 'z'

ALPHABET = ('a'..'z').to_a

def add_letters(array)
  sum = 0 
  
  array.each do |char| 
    sum = (sum - 26) if sum >= 26 
    sum += (ALPHABET.index(char) + 1) 
  end 
  ALPHABET[sum - 1]
  
end

#Examples:
p  add_letters(['a', 'b', 'c']) #= 'f'
p add_letters(['a', 'b']) #= 'c'
p add_letters(['z']) #= 'z'
p add_letters(['z', 'a']) #= 'a'
p add_letters(['y', 'c', 'b']) #= 'd' # notice the letter value overflowing
p add_letters([]) #= 'z'
