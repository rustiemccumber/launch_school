=begin
- input: integer
- output: string 

algorithm 
-divide by 10 return remainder into new variable
-take the new number input after /10 and take the remainder of that
-repeat until input == 0

example
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'
=end


def integer_to_string(int)
  array_digits = []
  loop do 
    int, remainder = int.divmod(10)
    array_digits.prepend(remainder)
    break if x == 0
  end
  array_digits.join


end

p integer_to_string(4321) 
p integer_to_string(0)
p integer_to_string(5000) 