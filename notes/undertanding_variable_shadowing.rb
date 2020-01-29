

# person = 'johnson'

# ['kim', 'joe', 'sam'].each do |person|
#   # uh-oh, we cannot access the outer scoped "name"!
#   puts "#{person} #{person}"
# end

#  puts person 

# person  = 'johnson'
# array = ['kim', 'joe', 'sam']
# position = 0

# loop do 

#   person = array[position]
#   position += 1
#   break if position == array.size

# end 

# puts person  

# # name = 'johnson'

# # ['kim', 'joe', 'sam'].each do |name|
# #   # uh-oh, we cannot access the outer scoped "name"!
# #   puts "#{name} #{name}"
# # end

# # puts name 

def each(array, person)

  counter = 0 
  loop do 
    num = array[0]
    counter += 1
    break if counter == array.size  
  end
  array 
end 

person = 'bob'

each(['kat', 'agus', 'rustie'], person)

p person 

