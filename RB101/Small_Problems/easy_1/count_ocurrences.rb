# Write a method that counts the number of occurrences 
# of each element in a given array.

# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# count_occurrences(vehicles)
# The words in the array are case-sensitive: 'suv' != 'SUV'. 
#` Once counted, print each element alongside the number of occurrences.

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

=begin

-input: array of strings
- output: count of each string 

clarifying questions: Can it look almost like that (can i output)
a hash or should it be exact?

- domain:  case-sensitive

algorithim:

initialize a hash, vehichles hash 

interate trhough the array

for each world in the array populate the hash with 
vehicles_hash[word] +=1

  
=end 


def count_occurrences(things)

   vehicles = [
    'car', 'car', 'truck', 'car', 'SUV', 'truck',
    'motorcycle', 'motorcycle', 'car', 'truck'
  ]

  vehicles_hash = Hash.new(0)

  vehicles.each { |word| vehicles_hash[word] += 1}

  vehicles_hash.each do | element, count|

    puts "#{element} => #{count}"
  end

end 


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

