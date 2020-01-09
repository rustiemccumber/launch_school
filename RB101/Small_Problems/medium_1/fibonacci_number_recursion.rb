# Write a recursive method that computes the nth Fibonacci number, 
# where nth is an argument to the method.

# INPUT: integer 
# OUTPUT: the nth Fibonacci number 

# fibonacci(1) == 1
# fibonacci(2) == 1
# fibonacci(3) == 2
# fibonacci(4) == 3
# fibonacci(5) == 5
# fibonacci(12) == 144
# fibonacci(20) == 6765

def fibonacci(n)
  return 1 if n == 1
  return 1 if n == 2
  fibonacci(n - 1) + fibonacci(n - 2)
end 

p fibonacci(20)