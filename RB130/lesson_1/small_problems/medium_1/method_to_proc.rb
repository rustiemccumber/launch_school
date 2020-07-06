# in the course content on blocks, we learn about "symbol to proc"
# to briefly review, consider this code:

comparator = proc { |a, b| b <=> a}

# and the `Array#sort` method, which expects a block argumnet
# to express how the `Array` will be sorted.  If we want to 
# us `comparator` to sort the `Array`, we hvae a problemt: it
# is a proce, not a block.  The following code:

# array.sort(comparator)

#fails with an ArgumentError.  To get around this, we can 
#use the proc to block operator `&` to convert `comparator`
#to a block:

array = [1, 2, 3]

puts array.sort(&comparator)

# a lone `&` applied to an object causes ruby to try to convert
# the object to a block.  If that object is a proc, the conversion
# happens automagically, just as shown above.  If the object is not
# a proc, the `&` attemtps to call the `#to_proc` method on the 
# object first. Used with symbos, e.g &:to_s, Ruby creates a proc
# that calls the `#to_s` method on  passed object, and then converts
# that proc to a block.  This is the "symbol to proc" operation (though)
# perhaps it should be called "symbol to block".

#did you know that you can perform a similar trick with methods?
#you can apply the `&` operator to an object that contains a `Method`;
#in doing so, Ruby calls `Method#to_oric`.'

def convert_to_base_8(n)
  n.to_s(8).to_i # replace these two method calls
end

# The correct type of argument must be used below
base8_proc = method(:convert_to_base_8).to_proc

# We'll need a Proc object to make this code work. Replace `a_proc`
# with the correct object
[8, 10, 12, 14, 16, 33].map(&base8_proc)

#The expected return value of map on
#this number array should be:

#[10, 12, 14, 16, 20, 41]

