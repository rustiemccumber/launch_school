=begin
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0
=end

print "what is the bil?"
bill = gets.chomp.to_f
print "what is the tip percentage"
tip_percent = gets.chomp.to_f

calculate_tip = (bill * (tip_percent/100)).round(2)
total = (calculate_tip + bill).round (2)


puts " the tip is $#{calculate_tip}"
puts "the total is $#{total}"