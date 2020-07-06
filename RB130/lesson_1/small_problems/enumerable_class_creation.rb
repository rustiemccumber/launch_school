# assume we have a `Tree` class that implemetns a binary tree.

class Tree
  include Enumerable 
end

# A binary tree is just one of many forms of collections
# such as Arrays, Hashes, Stacks, Sets, and more. all of these
# collection classes include the `Enumerable` module, which means they
# have access to an `each` method, as well as 
#  many other iterative methods such as `map`, `reduce`, `select`
# and more. 

# For this exercise, modify the Tree class to support the methods
# of `Enumerable`.  You do not have to actually implemnt any methods-- just show
# the methods that you must provide  

tree_obj = Tree.new

tree_obj.each {|x| puts "hi"}