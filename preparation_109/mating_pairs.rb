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

=begin 

- input: number and string 
- output: string and boolean
  + boolean if the number of pairs is more than or equal to the number given 

- problem domain: pairs must be 'B8' or '8B' ('B8B' does not count as two pairs)

Algorithm:

- Initialize a variable and have it point to an empty string

- split the string up into chars

- iterate through the array, if the current value is H and the next value 
is 8 add to the string add current value and next to the string 
- skip the next value if the current value is 8 and the next value is B append 
both to the string and skip the next value

=end 
require 'pry'
require 'pry-byebug'

def bears(int, string)


  idx = 0
  array = string.chars
  return_string = ""

  loop do 
    if (array[idx] == "B") && (array[idx + 1] == "8")
      return_string << (array[idx] + array[idx + 1])
      idx += 1
    elsif (array[idx] == "8") && (array[idx + 1] == "B")
      return_string << (array[idx] + array[idx + 1])
      idx += 1
    end 
    idx += 1
    break if idx == (array.size - 2)
  end 

  return_string 
  
end 

p bears(5, "il88B8gBB8B888fB88BB") #---> ['8BB8B8B88B', true]

