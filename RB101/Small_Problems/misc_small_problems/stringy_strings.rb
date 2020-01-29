
=begin
method that takes a positive integer and returns a string of alternating 0 and 1, always starting with 1. 
length of string should match the given integer.

inputs 
 -integer

outputs
 -string of zero and ones with the length of number 

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

The tests above should print true.
=end


def stringy(num)

  array = []
  x = 0 
  while x < num 
    if x % 2 == 1
      array << 0
    elsif x % 2 == 0
      array << 1
    end
    x += 1
  end 
  array.join 
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

