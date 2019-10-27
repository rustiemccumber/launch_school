

#input
#the loan amount (p)
#the Annual Percentage Rate (APR)
#the loan duration

#intermediate 
#monthly interest rate (j)
#loan duration in months (n)

#output
#m = p * (j / (1 - (1 + j)**(-n)))


def loan_amount_valid?(prin)
  (prin.to_i.to_s == prin) || (prin.to_f.to_s == prin)
end 

def loan_duration_valid_to_months()
end

puts "welcome to you mortgage calculator: please put your name:"
name = gets.chomp

puts "Hi! #{name}"

puts "please input your loan amount"


loan_amount =''
loop do 
  loan_amount = gets.chomp 
  if loan_amount_valid?(loan_amount)
    break
  else
    "please input a valid number for your loan amount"
  end
end 

puts "please enter the APR (ex. 10 = 10%)"
apr = gets.chomp

puts "please enter the loan duration (years)"
loan_duration = gets.chomp 

