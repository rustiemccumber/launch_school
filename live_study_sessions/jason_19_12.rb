# There is an array of strings. All strings contains similar letters except one. Try to find it!

# findUniq([ 'Aa', 'aaa', 'aaaaa', 'BbBb', 'Aaaa', 'AaAaAa', 'a' ]) == 'BbBb'
# findUniq([ 'abc', 'acb', 'bac', 'foo', 'bca', 'cab', 'cba' ]) == 'foo'

# Strings may contain spaces. Spaces is not significant, only non-spaces symbols matters. E.g. string that contains only spaces is like empty string.

# INPUT: array of strings
# OUTPUT: the string in the array that has different letters
# RULES:
#  - strings may contain spaces
#  - strings may contain symbols & digits
#  - spaces are not considered when matching characters
#  - all other strings will contain the same letters except the string
#    with different letters

# EXAMPLES
# findUniq([ 'Aa', 'aaa', 'aaaaa', 'BbBb', 'Aaaa', 'AaAaAa', 'a' ]) == 'BbBb'
# findUniq([ 'abc', 'acb', 'bac', 'foo', 'bca', 'cab', 'cba' ]) == 'foo'
# findUniq([ '123', '321', '532', '213' ]) == '532'
# findUniq([ 'BbBb', 'Aa', 'aaa', 'aaaaa', 'Aaaa', 'AaAaAa', 'a' ]) == 'BbBb'
# findUniq([ '', '', '', 'a', '' ]) == 'a'

# DATA STRUCTURE
# INPUT: Array
# OUTPUT: String

# ALGORITHM
# - figure out a way to keep track of which letters are in most of the strings
#   - counter -- loop  --  letters -- array[counter] -- array[counter + 1]
#   - if they both have the same letters, append letters to `letters` array
#   - if they don't have the same letters, check array[counter + 2]
# - compare each string to those letters to determine if they match


# - use `select` to iterate over the given array with `string` as a parameter
# - sort -- downcase

# - initialize a local variable `counter` and assign to it `0`
# - use loop and pass in a do..end block
#   + initialize local variable `letters` and assign to it an empty array
#   + initialize current to array[counter].sort.downcase
#   + initialize next_word to array[counter + 1].sort.downcase
#   + initialize third_word to array[counter + 2].sort.downcase
#   + Check to see if the letters in `current` match the letters in `next_word`
#     - current.to_a.uniq == next_word.to_a.uniq

def findUniq(array)
  counter = 0
  result = ''
  letters = ''
  
  if array[0].downcase.chars.uniq == array[1].downcase.chars.uniq
    letters = array[0].downcase.chars.uniq
  end
  
  loop do
    break if counter == array.size
    
    current = array[counter]
    result << current if current.downcase.chars.uniq == letters
    
    counter += 1
  end
  
  result
end

p findUniq([ 'Aa', 'aaa', 'aaaaa', 'BbBb', 'Aaaa', 'AaAaAa', 'a' ]) #== 'BbBb'
#p findUniq([ 'abc', 'acb', 'bac', 'foo', 'bca', 'cab', 'cba' ]) == 'foo'
#p findUniq([ '123', '321', '532', '213' ]) == '532'
#p findUniq([ 'BbBb', 'Aa', 'aaa', 'aaaaa', 'Aaaa', 'AaAaAa', 'a' ]) == 'BbBb'
#p findUniq([ '', '', '', 'a', '' ]) == 'a'