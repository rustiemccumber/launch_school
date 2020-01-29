# You have a bank of switches before you, numbered from 1 to n. 
# Each switch is connected to exactly one light that is initially off. 
# You walk down the row of switches and toggle every one of them.
# You go back to the beginning, and on this second pass, 
# you toggle switches 2, 4, 6, and so on. On the third pass, you go back again 
# o the beginning and toggle switches 3, 6, 9, and so on.
# You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, 
# and returns an Array that identifies which lights are on after n repetitions.

=begin

-input: integer representing the number of switches
-output: which switches are on after n repitions

algorithim:

populate an array with n items all saying 0

 - switch_bank = []
 - 1.upto(n) { switch_bank << 0}

iterate thourgh the array toggle lights with different iteration steps

- 1.upto(n) do |num|
    num.step(n, num) do |idx|
      switch_bank[idx] == 0 ? switch_bank[idx] += 1 : switch_bank[idx] -= 1

  
=end 

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

require 'pry'
require 'pry-byebug'


def toggle_lights(n)

  switch_bank = []
  1.upto(n) { switch_bank << 0}

  #binding.pry
  
  1.upto(n) do |num|
    num.step(n, num) do |idx|
      switch_bank[idx-1] == 0 ? switch_bank[idx-1] = 1 : switch_bank[idx-1] = 0
    end
  end 

  switch_bank

end

p toggle_lights(5)

p toggle_lights(9)


