=begin
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.
=end 

puts "Please enter and integer greater than 0:"
number = gets.chomp.to_i 

puts "Enter 's' to compute the sum, 'p' to compute the product"
sum_mult = gets.chomp

array = []
value = 0 

while value < number
 value += 1
 array << value 
end

if sum_mult == 's'
  sum_array = array.reduce(:+)
  puts "the sum of integers between 1 and #{number} is #{sum_array}"

elsif sum_mult == 'p'
  product_array = array.reduce(:*)
  puts "the product of integers between 1 and #{number} is #{product_array}"
end

