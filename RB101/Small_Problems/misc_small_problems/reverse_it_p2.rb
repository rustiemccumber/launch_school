=begin
  
input 
 -word or sentence

output
 - if work is great than 5 works then reverse world

data structure:

-convert word or sentence into a array of seperate strings

algorythm

-if word >= 5 reverse word


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

=end

def reverse_words(input)
  new_sentence = input.split.map do |x|
    if x.length >= 5 
      x.reverse 
    elsif x.length < 5
      x
    end
  end
 new_sentence.join(" ")
end



puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')   