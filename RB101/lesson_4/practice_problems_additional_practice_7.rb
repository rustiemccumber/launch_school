=begin 

Create a hash that expresses the frequency with which each letter occurs in this string:

- input: string
- ouput: hash with frequency of letters

examples:

{ "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

algorythm:

-split string into chars
-iterate over chars of string
 - assign each char to key of hash
 - assign frequency of char to value of hash

=end


statement = "The Flintstones Rock"
statement_array = statement.split(' ').join.chars.sort

results = {}

statement_array.each do |key|


  if results.has_key?(key)
    results[key] += 1
  else 
    results[key] = 1
  end

end

p results



