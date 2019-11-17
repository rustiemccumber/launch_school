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

signed_numbers
=end

def integer_to_string(int)
  array = []
  loop do 
    remainder = int % 10
    int /= 10
    array.prepend(remainder)
    break if int == 0 
  end
    array.join 
end

def integer_to_string_sign(int)
  case int <=> 0
  when -1
    int *= - 1
    '-' + integer_to_string(int)
  when +1
    '+' + integer_to_string(int)
  else 
    integer_to_string(int)
  end
end 



=begin
def integer_to_string_sign(int)
  if int.negative? 
    int *= -1
    '-' + integer_to_string(int)
  elsif int.positive? 
    '+' + integer_to_string(int)
  else
    integer_to_string(int)
  end
end
=end

p integer_to_string_sign(-4321) 
p integer_to_string_sign(0)
p integer_to_string_sign(5000) 

