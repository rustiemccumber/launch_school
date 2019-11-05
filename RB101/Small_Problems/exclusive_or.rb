=begin 

write a definition that takes arguments,
outputs true if one of the two conditions is true (and ONLY 1)
outputs false if eithe both of the two conditions are false, or both are true. 

=end

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

puts xor?(false, false)

