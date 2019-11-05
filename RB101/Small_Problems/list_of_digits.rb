=begin
write a defintion that takes a positive integer and returns a list of the digits in the number

-input
 -positive number

-output
 -list of digits in the number

data structure
 - input: number
 - output: array

algorithym:
 -map number into split collection of seperate numbers

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # =
  
=end 


def digit_list(num)
  num.to_s.chars.map {|x| x.to_i}
end

a = 3567

p digit_list(a)