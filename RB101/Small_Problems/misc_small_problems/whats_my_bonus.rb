=begin 

defition

inputs 
 -2 inputs: one positive integer, and a bolean

algorythm:
-if the input is true, return 1/2 of the pay as a bonus
-if the input is false, return 0 of the pay as a bonus

outputs:

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0

=end 

def calculate_bonus(salary, bolean)
  bolean ? (salary/2) : 0
end


puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
