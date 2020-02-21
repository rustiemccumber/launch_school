# A strongness of an even number is the number of times we can successively divide by 2 until we reach an odd number starting with an even number n.

# For example, if n = 12, then

# 12 / 2 = 6
# 6 / 2 = 3
# So we divided successively 2 times and we reached 3, so the strongness of 12 is 2.

# If n = 16 then

# 16 / 2 = 8
# 8 / 2 = 4
# 4 / 2 = 2
# 2 / 2 = 1
# we divided successively 4 times and we reached 1, so the strongness of 16 is 4

# Task
# Given a closed interval [n, m], return the even number that is the strongest in the interval. If multiple solutions exist return the smallest strongest even number.

# Note that programs must run within the alloted server time; a naive solution will probably time out.

# Constraints
# 1 <= n < m <= 2^64

# Examples
# [1, 2]    -->   2  # 1 has strongness 0, 2 has strongness 1
# [5, 10]   -->   8  # 5, 7, 9 have strongness 0; 6, 10 have strongness 1; 8 has strongness 3
# [48, 56]  -->  48

# input: two integers
# output: 1 integer, the strongest number 
#  + the string of a number is based on how many times it can be divided by 2 before
#     a prime number is reach
# 
# problem domain: 
#   + x1 <= n < m <= 2^64
#   + 1 <= n < m <= 2^64
# 
# Algorithim: 
#  - initialize an empty hash 
#  - initalize a local variable and have it point to an array with items from n..m 
#  - iterate through the array with of numbers 
#  - within the loop 
#    + initial a variable which points to the current number
#    + initalize a counter have it point to zero 
#    + until num.prime? do 
#      - num / 2 
#        counter += 1 
#     hash[num] = counter 
#    +reassign the counter to zero 
#   - hash.values.sort.last max_by to find the max values
#   - return the values with those numbers

require 'prime'

def strongest_even(n, m) 
  
  array = (n..m).to_a
  result = []
  hsh = {}
  strength = 0
  
  array.each do |number|
    current_number = number
    until current_number.prime? do
      current_number = current_number / 2
      strength += 1 
    end 
    hsh[number] = strength
    strength = 0
  end 
  hsh.each { |key, value| (result << key) if (hsh.values.sort.last == value) }
  result.min
end

p strongest_even(5, 10)
p strongest_even(48, 56)