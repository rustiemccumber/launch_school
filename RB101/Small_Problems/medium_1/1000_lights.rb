# You have a bank of switches before you, numbered from 1 to n. 
# Each switch is connected to exactly one light that is initially off.
# You walk down the row of switches and toggle every one of them. You go 
# back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on.
# On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and
# so on. You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an 
# Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

=begin 
INPUT: integer value representing the number of lights you have 
OUTPUT: array with the numbers corresponding to the lights which are on 

RULES: 

ALOGRITHM: 

- Initialize a variable `lights` and assign an empty array to it
- populate the array with `off` using n.times 
- initialize a variable `increment`, assign the integer `1` to it
  + with each loop increase value of increment by 1 
- Create a loop (upto) which starts from 1 and breaks at `number_lights`
  + make the current value of loop `n` equal to the starting_value of the each iteration 
- create a loop within the `upto` which switches the each array element of `lights` to the opposite 
  + this increments by the current value of `increment` and stops at number_lights -1 (last index value)
  + use step for this 

- call `each_with_index` on lights array 
  + if light is on: lights_on? << index + 1 


=end 

def initialize_array(number_lights)
  lights = []
  number_lights.times { lights << 'off'}
  lights 
end

def toogle_lights(number_lights)

  lights = initialize_array(number_lights)
  increment = 1 

  1.upto(number_lights) do |n|
    (n-1).step(to: number_lights - 1, by: increment) do |idx|
      lights[idx] == 'off'? lights[idx] = 'on' : lights[idx] = 'off'
    end
    increment += 1 
  end
  lights
end 

def identify_lights(number_lights)
  toogled_lights = toogle_lights(number_lights)
  lights_on = []
  toogled_lights.each_with_index do |state, idx|
    if state == 'on'
      lights_on << (idx + 1)
    end
  end 
  lights_on
end 
  

p identify_lights(9)


