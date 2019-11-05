=begin
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!
=end

print "what is your age?" 
current_age = gets.chomp.to_i
print "At what age would you like to retire?"
retire_age = gets.chomp.to_i


years_of_work_remaining = retire_age - current_age
current_year = 2019
retire_year = current_year + years_of_work_remaining

puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You only have #{years_of_work_remaining} years of work to go!"
