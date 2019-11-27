
=begin 
Write a method that takes an Array of integers as input, multiplies all the numbers together, 
divides the result by the number of entries in the Array, and then prints the result rounded
to 3 decimal places. Assume the array is non-empty.

-input: array of integeters
-output: float rounded to 3 decimal places
  - multiply all numbers together
  - divide all numbers by number of entries in the Array 

algorithm 

inject .inject(1, :*)   to get * of all numbers


show_multiplicative_average([3, 5])
The result is 7.500

show_multiplicative_average([6])
The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
The result is 28361.667


=end 


def show_multiplicative_average(array)
  mult = array.inject(1, :*).to_f
  multi_avg = (mult/array.size).to_f.round(3)
  p "the result is #{sprintf('%.3f', multi_avg)}"
end

show_multiplicative_average([2, 5, 7, 11, 13, 17])
show_multiplicative_average([6])
show_multiplicative_average([3, 5])
