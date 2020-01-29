# F(1) = 1
# F(2) = 1
# F(n) = F(n - 1) + F(n - 2) where n > 2

def fibonacci(n)
  
  return 1 if n == 1 || n == 2
  fibonacci(n - 1) + fibonacci(n - 2)

end 


p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765