#input: ask the user for two numbers
#input2: ask the user to input a operation (add, subtract, multiply or divide)
#perform the operation on the two numbers
#output the result

#answer = Kernel.gets().chomp()
#Kernel.puts(answer)

Kernel.puts("welcome to the calculator")

Kernel.puts("what's the first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("what's the first second number?")
number2 = Kernel.gets().chomp()

Kernel.puts("what operation would you like to perfrom? 1) add 2) subtract 3)multiply 4)divide")

operator = Kernel.gets().chomp()

if operator == '1'
  result = number1.to_i() + number2.to_i()
elsif operator == '2'
  result = number1.to_i() - number2.to_i()
elsif operator == '3'
  result = number1.to_i() * number2.to_i()
elsif operator == '4'
  result = number1.to_f() / number2.to_f()
elsif 
  'that is not a proper operator'
end


puts result
  
  