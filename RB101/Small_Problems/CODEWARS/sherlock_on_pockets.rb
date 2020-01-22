# Sherlock has to find suspects on his latest case. 
# He will use your method, dear Watson. Suspect in this
# case is a person which has something not allowed in his/her 
# pockets.

# Allowed items are defined by array of numbers.

# Pockets contents are defined by map entries where key is a
# person and value is one or few things represented by an
# array of numbers (can be nil or empty array if empty),
# example:

# pockets = { 
#   bob: [1],
#   tom: [2, 5],
#   jane: [7]
# } 

=begin
- INPUT: array 
- OUTPUT: suspects 

-problem domain: 

- implicit requirements:

- clarifying questions:

- edge cases

Algorithm: 

- select the keys which are not completely emcompased by the array. 
  - look through the values of the hash
  - if value array.all? { |num| input_array.include?(num) == false
     suspects << key 
EXAMPLES

# Write method which helps Sherlock to find suspects. If no suspect is found or there are no pockets (pockets == nil), the method should return nil.

# find_suspects(pockets, [1, 2]) # => [:tom, :jane]
# find_suspects(pockets, [1, 7, 5, 2]) # => nil
# find_suspects(pockets, []) # => [:bob, :tom, :jane]
# find_suspects(pockets, [7]) # => [:bob, :tom]

=end



def find_suspects(hsh, input_array)

  suspect = []
  hsh.each do |person, array|
    if array.all? { |num| input_array.include?(num)} == false
      suspect << person 
    end 
  end 
  return nil if suspect == []
  suspect
end

pockets = { 
  bob: [1],
  tom: [2, 5],
  jane: [7]
} 

p find_suspects(pockets, [1, 2]) # => [:tom, :jane]
p find_suspects(pockets, [1, 7, 5, 2]) # => nil
p find_suspects(pockets, []) # => [:bob, :tom, :jane]
p find_suspects(pockets, [7]) # => [:bob, :tom]


