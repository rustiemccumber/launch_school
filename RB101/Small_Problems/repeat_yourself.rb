=begin
  
write defintion

input 
 - string 
 - positive integer

output 
 - string # of times dictated by integer

ex 

repeat('hello', 3)

hello
hello
hello

=end 

def repeat(word, num)
  num.times {|num| puts word}
end

repeat('hello', 3)