# There is an array with some numbers. All numbers are equal except for one. Try to find it!

# find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
# find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55

# ========

# There is an array of strings. All strings contains similar letters except one. Try to find it!

# findUniq([ 'Aa', 'aaa', 'aaaaa', 'BbBb', 'Aaaa', 'AaAaAa', 'a' ]) === 'BbBb'
# findUniq([ 'abc', 'acb', 'bac', 'foo', 'bca', 'cab', 'cba' ]) === 'foo'
# Strings may contain spaces. Spaces is not significant, only non-spaces symbols matters. E.g. string that contains only spaces is like empty string.

# It’s guaranteed that array contains more than 3 strings.

# There is an array. All elements are the same except for one. Try to find it!

# findUniq([ 1, 1, 1, 2, 1, 1 ]) === 2
# findUniq([ 4, 4, 'foo', 4 ]) === 'foo'
# It’s guaranteed that array contains more than 3 elements. Array may contain anything (including NaN).
# ===========


# Given two arrays of strings a1 and a2 return a sorted array r in alphabetical
# order of the strings of a1 which are substrings of strings of a2.

# Example 1: a1 = ["arp", "live", "strong"]

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
# ======================


# Rank Up
# TRAINSKIP
# 6 kyu
# Build a pile of Cubes
# Your task is to construct a building which will be a pile of n cubes. The cube at the bottom will have a volume of n^3, 
# the cube above will have volume of (n-1)^3 and so on until the top which will have a volume of 1^3.

# You are given the total volume m of the building. Being given m can you find the number n of cubes you will have to build?

# ==============
# A child is playing with a ball on the nth floor of a tall building. The height of this floor, h, is known.

# He drops the ball out of the window. The ball bounces (for example), to two-thirds of its height (a bounce of 0.66).

# His mother looks out of a window 1.5 meters from the ground.

# How many times will the mother see the ball pass in front of her window (including when it's falling and bouncing?

# Three conditions must be met for a valid experiment:
# Float parameter "h" in meters must be greater than 0
# Float parameter "bounce" must be greater than 0 and less than 1
# Float parameter "window" must be less than h.
# If all three conditions above are fulfilled, return a positive integer, otherwise return -1.

# Note:
# The ball can only be seen if the height of the rebounding ball is strictly greater than the window parameter.

# Example:
# - h = 3, bounce = 0.66, window = 1.5, result is 3

# - h = 3, bounce = 1, window = 1.5, result is -1 

# (Condition 2) not fulfilled).

# ======================

# Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 positive integers.
# No floats or non-positive integers will be passed.

# For example, when an array is passed like [19, 5, 42, 2, 77], the output should be 7.

# [10, 343445353, 3453445, 3453545353453] should return 3453455.
#==================================================================================

=begin 
input: array of strings
output: the string that does not match

1. interate through the array, and map a new array
  - downcase 
  - eliminate duplicates 
  - eliminate spaces 
  - sort each string 

2. from the items which are in the array, find the item which which does not equal the rest 
 - iterate through the array (each_with_index)
 - find the item where there is only 1 
   + (array).count(item) == 1
   + return the index of that item
   + the return item to return the original value  


findUniq([ 'Aa', 'aaa', 'aaaaa', 'BbBb', 'Aaaa', 'AaAaAa', 'a' ]) === 'BbBb'
findUniq([ 'abc', 'acb', 'bac', 'foo', 'bca', 'cab', 'cba' ]) === 'foo'
Strings may contain spaces. Spaces is not significant, only non-spaces symbols matters. 
E.g. string that contains only spaces is like empty string.

=end 


# def findUniq(array)
#   sorted_array = array.map {|string| string.downcase.chars.uniq.sort.join.delete(" ")}
#   sorted_array.each_with_index do |item, index|
#     return array[index] if sorted_array.count(item) == 1
#   end 
# end 


# p findUniq([ 'Aa', 'aaa', 'aaaaa', 'BbBb', 'Aaaa', 'AaAaAa', 'a' ])
# p findUniq([ 'abc', 'acb', 'bac', 'foo', 'bca', 'cab', 'cba' ])


=begin 
Create a function that returns the sum of the two lowest positive numbers
given an array of minimum 4 positive integers. No floats or non-positive integers will be passed.

For example, when an array is passed like [19, 5, 42, 2, 77], the output should be 7.

[10, 343445353, 3453445, 3453545353453] should return 3453455.
=end 



# A child is playing with a ball on the nth floor of a tall building. The height of this floor, h, is known.

# He drops the ball out of the window. The ball bounces (for example), to two-thirds of its height (a bounce of 0.66).

# His mother looks out of a window 1.5 meters from the ground.

# How many times will the mother see the ball pass in front of her window (including when it's falling and bouncing?

# Three conditions must be met for a valid experiment:
# Float parameter "h" in meters must be greater than 0
# Float parameter "bounce" must be greater than 0 and less than 1
# Float parameter "window" must be less than h.
# If all three conditions above are fulfilled, return a positive integer, otherwise return -1.

# Note:
# The ball can only be seen if the height of the rebounding ball is strictly greater than the window parameter.

# Example:
# - h = 3, bounce = 0.66, window = 1.5, result is 3

# - h = 3, bounce = 1, window = 1.5, result is -1 

# (Condition 2) not fulfilled).


# There is an array of strings. All strings contains similar letters except one. Try to find it!

# findUniq([ 'Aa', 'aaa', 'aaaaa', 'BbBb', 'Aaaa', 'AaAaAa', 'a' ]) == 'BbBb'
# findUniq([ 'abc', 'acb', 'bac', 'foo', 'bca', 'cab', 'cba' ]) == 'foo'
# Strings may contain spaces. Spaces is not significant, only non-spaces symbols matters. E.g. string that contains only spaces is like empty string.

# It’s guaranteed that array contains more than 3 strings.


# There is an array of strings. All strings contains similar letters except one. Try to find it!

# findUniq([ 'Aa', 'aaa', 'aaaaa', 'BbBb', 'Aaaa', 'AaAaAa', 'a' ]) == 'BbBb'
# findUniq([ 'abc', 'acb', 'bac', 'foo', 'bca', 'cab', 'cba' ]) == 'foo'
# Strings may contain spaces. Spaces is not significant, only non-spaces symbols matters. E.g. string that contains only spaces is like empty string.

# It’s guaranteed that array contains more than 3 strings.
=begin

# There is an array of strings. All strings contains similar letters except one. Try to find it!

# findUniq([ 'Aa', 'aaa', 'aaaaa', 'BbBb', 'Aaaa', 'AaAaAa', 'a' ]) == 'BbBb'
# findUniq([ 'abc', 'acb', 'bac', 'foo', 'bca', 'cab', 'cba' ]) == 'foo'
# Strings may contain spaces. Spaces is not significant, only non-spaces symbols matters. E.g. string that contains only spaces is like empty string.

# It’s guaranteed that array contains more than 3 strings.
=begin

INPUT: array
OUTPUT: string
DATA STRUCTURE: strings and arrays
RULES:
  - input array contains >= 3 elements
  - all elements except for one share the same letters.
  - pick the string that has no letters in common with the others
  - spaces are not significant
ALGORITHM:
  - Take the first element from the array, take the first character in that string, and check if other strings in the array include that character. As soon as I find a string that doesn't, return that string.
  - initialize a variable character and assign to it the first character in the first element in the input array.
  - iterate over the array using Array#each
  - check if current element of iteration includes character
  - if it does not, return the element
=end

def findUniq(arr)
  character = arr[0][0].downcase
  return arr[0] if arr[1..-1].all? { |string| !string.downcase.include?(character) }
  arr.each do |string|
    return string if !string.downcase.include?(character)
  end
end

p findUniq([ ' Aa', 'aaa','BbBb', 'aaaaa', 'Aaaa', 'AaAaAa', 'a' ])
p findUniq([ 'abc', 'acb', 'bac', 'foo', 'bca', 'cab', 'cba' ]) == 'foo'
p findUniq([ 'BbBb', 'aaa', 'aaaaa', 'Aaaa', 'AaAaAa', 'a' ])


