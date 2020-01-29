=begin 

input = 6 numbers 

output = puts if the 6th number appears in the array of the first 5 numbers. 

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

=end 

def prompt(message)
  puts "==> #{message}"
end

array = []
prompt("enter the 1st number")
array << gets.chomp.to_i 
prompt("enter the 2nd number")
array << gets.chomp.to_i
prompt("enter the 3rd number")
array << gets.chomp.to_i
prompt("enter the 4th number")
array << gets.chomp.to_i
prompt("enter the 5th number")
array << gets.chomp.to_i 
prompt("enter the 6th number")
sixth_number = gets.chomp.to_i

if array.include?(sixth_number)
  puts "the number #{sixth_number} appears in the array #{array}"
else
  puts "the number #{sixth_number} does not appear in the array #{array}"
end