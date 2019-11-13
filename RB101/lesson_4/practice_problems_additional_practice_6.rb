=begin 

Amend this array so that the names are all shortened to just the first three characters:

-input: array with names
-output: mutation of array with first 3 letters of name 
=end


flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! {|name| name[0,3]}

puts flintstones