=begin 

write a method that will return a substring based on specified indices.

substring("honey", 0, 2). #=> "hon"

substring("honey", 1, 2). #=> "on"

substring("honey", 3, 9). #=> "ey"

substring("honey", 2)

this is simple just use slice

=end 


def substring(string, first, last = 'a')
   if last != 'a'
    string.slice(first..last)
   else
    string.slice(first)
   end 
end 

p substring("honey", 0, 2) #=> "hon"

p substring("honey", 1, 2) #=> "on"

p substring("honey", 3, 9) #=> "ey"

p substring("honey", 2)