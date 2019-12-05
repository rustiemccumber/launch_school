=begin 
A double number is a number with an even number of digits whose left-side digits are exactly the same 
as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433,
and 107 are not.

Write a method that returns 2 times the number provided as an argument, unless the argument is a
double number; double numbers should be returned as-is.

input: number
output: 
 -if number is a double number: return number 
- else return number * 2

algorithm
  determine if it is a double:
    -number[0...(length/2)] == number[((length/2) + 1) .. -1]
    -if the above is true return the number 
  else 
    number * 2

Examples:

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

=end 

def twice(number)
  length = number.to_s.length
  if length.odd?
    number * 2
  elsif 
    number.to_s[0..((length/2) - 1)] == number.to_s[(length/2)..-1]
    number
  else
    number * 2
  end 
end 

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10