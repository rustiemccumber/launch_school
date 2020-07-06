# For this exercise, we'll be learning and practicing our knowledge 
# of the arity of lambdas, procs, and implicit blocks. Two groups of 
# code also deal with the definition of a Proc and a Lambda, and the
# differences between the two. Run each group of code below: For your
# answer to this exercise, write down your observations for each 
# group of code. After writing out those observations, write 
# one final analysis that explains the differences between 
# procs, blocks, and lambdas.

# # Group 1
# my_proc = proc { |thing| puts "This is a #{thing}." }
# puts my_proc
# puts my_proc.class
# my_proc.call
# my_proc.call('cat')

# #observations: Group 1

# #Proc#to_s does not exist, instead it is looking up the hierarchy chain
# #and calling Object#to_s, which returns a string representation of the Object

# #You can call a proc without passing in a argument
# #you can call a proc with passing it an argument

# # Group 2 
# my_lambda = lambda { |thing| puts "This is a #{thing}." }
# my_second_lambda = -> (thing) { puts "This is a #{thing}." }
# puts my_lambda
# puts my_second_lambda
# puts my_lambda.class
# my_lambda.call('dog')
# #my_lambda.call
# my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." }
# puts my_third_lambda

# # puts my_lambda returns a string representation of a Proc object.  
# # thus lambdas are Procs!
# # puts mmy_secon_lambda also returns a Proc object, showing that you can
# # use different syntax to acomplish the same goal
# #puts my_lambda.class returns Proc
# #Lamdas have different arity rules, they have to have the same number of arguments
# # pass to them on execution, as parameters definied
# # lambda is not a class as seen when calling puts my_third_lambda, thus objects can not
# # be instantiated from them

# Group 3
# def block_method_1(animal)
#   yield
# end

# block_method_1('seal') { |seal| puts "This is a #{seal}."}
# block_method_1('seal')

#observation group3:
# you get a local jump error if you try to use a block on a method 
# which is supposed to yield to block (and doesn't have block_given? guard clause)



# # Group 4
# def block_method_2(animal)
#   yield(animal)
# end

# block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
# block_method_2('turtle') do |turtle, seal|
#   puts "This is a #{turtle} and a #{seal}."
# end
# block_method_2('turtle') { puts "This is a #{animal}."}

# blocks have lenient arity rules which let you have more parameters defined than passed in
# blocks have to have a parameter defined

#final explanation, a Proc is a class which lets you define an object of that class.
#a lambda is a Proc with different airity rules. a lamda has to be passsed in the same
# number of arguments as the parameters that it has, a proc does not.  A block is not a class
# an object cannot be instantiated from it. It's airty rules let you pass in les than the number of parameters defined, or more
# but a parameter must be defined in the block.  A proc can be called without a argument passed in

