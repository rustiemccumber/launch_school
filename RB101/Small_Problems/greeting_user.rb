
=begin
What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?
=end 

print "what is your name? "
name = gets.chomp 


if name[-1] == '!'
  name = name.chomp
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?" 
else
  puts "Hello #{name}"
end 