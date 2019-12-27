# In order to prove it's success and gain funding,
# the wilderness zoo needs to prove to environmentalists
# that it has a given integer number of mating pairs of bears.
#
# You must check within string to find all of the mating
# pairs, and return a string containing only them.
# Line them up for inspection.
#
# Rules: Bears are either 'B' (male) or '8' (female),
# Bears must be together in male/female pairs 'B8' or '8B',
# Mating pairs must involve two distinct bears each
# ('B8B' may look fun, but does not count as two pairs).
#
# Return an array containing a string of only the mating
# pairs available and `true` if the number is more
# than or equal to the given integer, `false` if not:
# 
# bears(6, 'EvHB8KN8ik8BiyxfeyKBmiCMj') ---> ['B88B', false]
# bears(1, 'EvHaKNikiyxfey') ---> ['', false]
# bears(5, "il88B8gBB8B888fB88BB") ---> ['8BB8B8B88B', true]
# bears(6, "EvHB8BKN8ikB8B8iyxfeyKBmiCMj") ---> ["B8B8B8", false]
#
# The given integer will always be a positive integer,
# and the string will never be empty


# -input: two arguments
#   + number of mating pairs (integer)
#   + string that might have mating pairs
  
# -output: array
#  + string of the mating pairs
#  + true if it is equal to or greater than the given integer 

# Rules: 
#  + 'B'male
#  + '8'female
#  + must be two distinct pairs of bears (not 'B8B')
 
#  Algorithm
 
# - initialize a local variable (counter)
# - split into individual characters
# - interate through the string (each_with_index)

# - if the char is 8 following char && if preceeding char !=8 
#    + if following char is B  counter + 1
# - if the B check the following character && if preceeding char != 8 
#   + if the following char is B counter + 1 

#



# bears(6, 'EvHB8KN8ik8BiyxfeyKBmiCMj') ---> ['B88B', false]
# bears(1, 'EvHaKNikiyxfey') ---> ['', false]
# bears(5, "il88B8gBB8B888fB88BB") ---> ['8BB8B8B88B', true]
# bears(6, "EvHB8BKN8ikB8B8iyxfeyKBmiCMj") ---> ["B8B8B8", false]



########### attempt 2 ####################

#  Algorithm
 
# until string.size -3
# - initilize empty array 
# - split up into chunks of two string[counter] + string[counter] add to empty array 
# - count 8B and B8 after 

# bears(6, 'EvHB8KN8ik8BiyxfeyKBmiCMj') ---> ['B88B', false]
# bears(1, 'EvHaKNikiyxfey') ---> ['', false]
# bears(5, "il88B8gBB8B888fB88BB") ---> ['8BB8B8B88B', true]
# bears(6, "EvHB8BKN8ikB8B8iyxfeyKBmiCMj") ---> ["B8B8B8", false]


# def bears(number, string)
#   result_array = []
#   output_array = []
#   array_substrings = []
#   array_string = string.chars

#   array_string.each_with_index do |char, index|
#     result_array << char
#     if result_array.size > 1
#       if result_array.last(2).join.include?('B8') || result_array.last(2).join.include?('8B')
#         output_array[0] << result_array.last(2).join 
#       end
#     end 
#   end 
#    p output_array 
#    bear_pairs = (array_substrings.count('B8')) + (array_substrings.count('8B'))
#    boolean = (number <= bear_pairs)
#    [array_substrings.join, boolean]
# end 

def bears(number, string)
  result_array = []
  pairs =  string.scan('8B').join + string.scan('8B').join

end


p bears(6, 'EvHB8KN8ik8BiyxfeyKBmiCMj') #== ['B88B', false]
p bears(1, 'EvHaKNikiyxfey') #== ['', false]
p bears(5, "il88B8gBB8,B8,88,fB,88,BB") #== ['8BB8B8B88B', true]
p bears(6, "Ev,HB,8B,KN,8i,kB,8B,8iyxfeyKBmiCMj") #== ["B8B8B8", false]

# Given two arrays of strings a1 and a2 return a sorted array r in lexicographical order of the strings of a1 which are substrings of strings of a2.

# #Example 1: a1 = ["arp", "live", "strong"]

# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

# returns ["arp", "live", "strong"]

# #Example 2: a1 = ["tarp", "mice", "bull"]

# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

# returns []

# Notes:
# Arrays are written in "general" notation. See "Your Test Cases" for examples in your language.

# In Shell bash a1 and a2 are strings. The return is a string where words are separated by commas.

# Beware: r must be without duplicates.
# Don't mutate the inputs.

# INPUT: two arrays of strings
#        - one array may be substrings of the other array
# OUTPUT: sorted array
# RULES:
# - no duplicates in return array
# - don't mutate inputs

# EXAMPLES:
# match_arrays(["arp", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"]) == ["arp", "live", "strong"]
# match_arrays(["tarp", "mice", "bull"], ["lively", "alive", "harp", "sharp", "armstrong"]) == []

# DATA STRUCTURE
# INPUT: Two Arrays
# OUTPUT: Array

# ALGORITHM
# - iterate through the first array using `select`, `substring` as parameter
#   + call `any?` on the second array passing in a block with `string` as a parameter
#     - if `string` contains `substring`, return `true`
#       + string.match?(substring)

# def match_arrays(first, second)
#   first.select do |substring|
#     second.any? { |string| string.match?(substring) }
#   end
# end
  
# p match_arrays(["arp", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"]) == ["arp", "live", "strong"]
# p match_arrays(["tarp", "mice", "bull"], ["lively", "alive", "harp", "sharp", "armstrong"]) == []
# p match_arrays(["arp", "ab", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"]) == ["arp", "strong"]