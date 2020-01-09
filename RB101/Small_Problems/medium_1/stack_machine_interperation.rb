

# n Place a value n in the "register". Do not modify the stack.
# PUSH Push the register value on to the stack. Leave the value in the register.
# ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
# SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
# MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
# DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
# MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
# POP Remove the topmost item from the stack and place in register
# PRINT Print the register value


# RULES:
#  + initialize register to 0
# all programs are correct programs 
# All operations are integer operations (which is only important with DIV and MOD).
# Programs will be supplied to your language method via a string passed in as an argument.
#make a stack machine with the above commands 


def minilang(string)

  stack = []
  register = 0

  commands = string.split

  commands.each do |command|
    case command 
    when 'PUSH'  then stack << register 
    when 'ADD'   then register += stack.pop 
    when 'SUB'   then register -= stack.pop
    when 'MULT'  then register *= stack.pop 
    when 'DIV'   then register /= stack.pop 
    when 'MOD'   then register %= stack.pop
    when 'POP'   then register = stack.pop
    when 'PRINT' then puts register
    else         register = command.to_i  
    end 
  end 
end 



p minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
