

=begin

method 

inputs: integer
outputs: some of each all digits in the integer

data/algotrym:
split 


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

should return true

=end 

def sum(num)

num.to_s.chars.map(&:to_i).reduce(:+)
 

end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
