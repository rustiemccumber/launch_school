

# input
# the loan amount (p)
# the Annual Percentage Rate (APR)
# the loan duration

# intermediate
# monthly interest rate (j)
# loan duration in months (n)

# output
# m = p * (j / (1 - (1 + j)**(-n)))



def loan_amount_valid?(princ)

  (princ.to_i.to_s == princ) || (princ.to_f.to_s == princ)

end 

def loan_duration_valid_to_months()
end

puts "welcome to you mortgage calculator: please put your name:"
name = gets.chomp

puts "Hi! #{name}"

puts "please input your loan amount"


loan_amount = ''
loop do 
  loan_amount = gets.chomp 
 
  if loan_amount.empty?() || loan_amount.to_f() < 0
    puts "please enter a positive number"
  elsif loan_amount_valid?(loan_amount) 
    break
  else
    puts "please input a valid number for your loan amount"
  end
end 


puts "please enter the APR (ex. 10 = 10%)"


apr = ''
loop do
  apr = gets.chomp
  apr_2 = apr.split('')
  if apr_2.include?('.')
    puts "please input a number without a decimal"
  else 
    break
  end
end 


puts "please enter the loan duration (years)"
loan_duration = gets.chomp 

p = loan_amount.to_f 
n = 12 * loan_duration.to_f 
j = ((apr.to_f)/12)/100


puts "you monthly payment is: #{m = p * (j / (1 - (1 + j)**(-n)))}"




