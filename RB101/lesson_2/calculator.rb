#input: ask the user for two numbers
#input2: ask the user to input a operation (add, subtract, multiply or divide)
#perform the operation on the two numbers
#output the result

#answer = Kernel.gets().chomp()
#Kernel.puts(answer)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(op)
  case op
  when '1'
    'adding'
  when '2'
    'subtracting'
  when '3'
    'multiplying'
  when '4'
    'dividing'
  end

end

prompt("welcome to the calculator. Enter your name")


name = ''
loop do 
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt("Make sure to use a valid name")
  else
    break
  end
end

prompt("Hi #{name}")

loop do #main loop

  number1 = ''

  loop do 
    prompt("what's the first number?")
    number1 = Kernel.gets().chomp()
    if valid_number?(number1)
      break
    else 
      prompt("shit wasn't valid")
    end
  end

  number2 = ''

  loop do 
    prompt("what's the first second number?")
    number2 = Kernel.gets().chomp()
    if valid_number?(number1)
      break
    else 
      prompt("shit wasn't valid")
    end
  end

  operator_prompt = <<-MSG

   What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide

  MSG

  prompt(operator_prompt)

  
  operator = ''
  loop do 
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else 
      prompt("must choose 1, 2, 3, 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
            number1.to_i() + number2.to_i()
           when '2'
            number1.to_i() - number2.to_i()
           when '3'
            result = number1.to_i() * number2.to_i()
           when '4' 
            result = number1.to_f() / number2.to_f()
           
  end   

  prompt("the result is #{result}")

  prompt("do you want to perfrom another operation? (y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("thank you for using the calculator, goodbye!")
    