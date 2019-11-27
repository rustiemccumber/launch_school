=begin 
Write a method that calculates and returns the index of the first Fibonacci number
that has the number of digits specified as an argument. (The first Fibonacci number
has index 1.)

algorithm 

-create a loop that writes the fibonachi number
-when the loop hits the first number with x digits, stop loop and return 
the index of the value

find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

=end 

def find_fibonacci_index_by_length(number_of_digits)
  increment_position = 2
  fib_array = [1,1]
    loop do 
      fib_array << fib_array[increment_position -1] + fib_array[increment_position-2]
      increment_position += 1
      break if fib_array.last.to_s.length == number_of_digits
    end
  fib_array.index(fib_array.last) + 1
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(3) == 12  
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847