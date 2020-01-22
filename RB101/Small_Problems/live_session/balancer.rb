# write a method that takes a string and returns a boolean inidcating whetehr this
# string has a balanced set of partntheses

=begin 
- input: string 
- output: bollean 

-rules: the return value can be true if there are no parthenses

- Mental Model:
if a string has the same number of "(" as ")" return true, else return false 


- string.count("(") == string.count(")") 



=end 

def balancer(string)
  string.count("(") == string.count(")") 
end 



p balancer("hi") == true
p balancer("(hi") == false
p balancer("(hi)") == true

#bonus

balancer(")hi(") == false


