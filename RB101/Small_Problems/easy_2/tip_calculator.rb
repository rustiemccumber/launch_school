=begin

Create a simple tip calculator. The program should 
prompt for a bill amount and a tip rate. The program 
must compute the tip and then display both the tip 
and the total amount of the bill.

Example:

What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

=end 

print "what is the bill?"
bill = gets.chomp.to_i

print "what is the tip percentage?"
tip_percentage = gets.chomp.to_i

tip_amount = (tip_percentage.to_f/100) * bill

bill_total = tip_amount + bill 

puts tip_amount
puts bill_total