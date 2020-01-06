puts "what type is this: method defintion (md) , method call (mc)"
answer = gets.chomp.downcase 

if answer == 'md'
  puts "is a local variable defined? (y, n)"
  local_variable = gets.chomp.downcase
end 

if answer == 'md' && local_variable == 'y' 

    puts "what is the name of the method defintion?"
    method_name = gets.chomp

    puts "how many parameters does the method take? (ie. 1)"
    method_paramters_count = gets.chomp


    puts "what is the name of the first method parameter?"
    method_parameter_name_1 = gets.chomp


    puts "what lines does the method defintion span? (i.e 1-3)"
    method_lines_span = gets.chomp 

    puts "what line is the local variable being initialized on?"
    local_variable_line = gets.chomp

    puts "what is the name of the local variable?"
    local_variable_name = gets.chomp

    puts "what type of object does it point to?"
    local_variable_object_type = gets.chomp

    puts "what is the value of the object?"
    local_variable_object_value = gets.chomp

    puts "what is the type of (outputing) method of method return value?"
    type_return_value_output_method = gets.chomp 

    puts "on what line is the ouputing metod"
    outputing_method_line = gets.chomp

    puts "what name variable is passed the outputing method?"
    variable_return_value_output_method = gets.chomp

    puts "
on `line #{method_lines_span}` the method `#{method_name}` is defined that takes #{method_paramters_count} parameter `#{method_parameter_name_1}`.

On `line #{local_variable_line}` the local variable `#{local_variable_name}` is initialized and the #{local_variable_object_type} object with value `#{local_variable_object_value}` is assigned to it.

on `line #{outputing_method_line}` the method `#{method_name}` is called with the local variable `#{local_variable_name}` passed to it as an argument. The return value of this method call is then passed to the method `#{type_return_value_output_method}`. `#{type_return_value_output_method}`calls the method `inspect`, which returns a string object containing a human-readable representation of the object, this string is then displayed.

On `line #{method_lines_span[0]}` the variable ,`#{method_parameter_name_1}`, local to the method defintion test is set to point to the same #{local_variable_object_type} object which is being referenced by the local variable `#{local_variable_name}`, with value `#{local_variable_object_value}`.

ENTER DESCRIPTION OF WHAT HAPPENS IN THE METHOD, IF THE VARIABLE IS MUTATED OR NOT, AND WHAT THE RETURN VALUE (LAST LINE RUN OF METHOD IS)."

end 

if answer == 'md' && local_variable == 'n'
  
  puts "what is the name of the method defintion?"
  method_name = gets.chomp

  puts "how many parameters does the method take? (ie. 1)"
  method_paramters_count = gets.chomp


  puts "what is the name of the first method parameter?"
  method_parameter_name_1 = gets.chomp


  puts "what lines does the method defintion span? (i.e 1-3)"
  method_lines_span = gets.chomp 
  
  puts "what is the type of (outputing) method of method return value?"
  type_return_value_output_method = gets.chomp 

  puts "on what line is the ouputing metod"
  outputing_method_line = gets.chomp

  puts "what value is passed to the outputing method?"
  value_to_output_method = gets.chomp
  
  puts "what object type is the value passed to the outputing method?"
  object_type_to_output_method = gets.chomp 

puts "
on `line #{method_lines_span}` the method `#{method_name}` is defined that takes #{method_paramters_count} parameter `#{method_parameter_name_1}`.

on `line #{outputing_method_line}` the method `#{method_name}` is called with the local #{object_type_to_output_method} object `#{value_to_output_method}` passed to it as an argument. The return value of this method call is then passed to the method call `#{type_return_value_output_method}` as an argument. `#{type_return_value_output_method} calls the `inspect` method on the object it is called on, which returns a containing a human-readable representation of the object. The `p` method then outputs this object, and returns the  object .

ENTER DESCRIPTION OF WHAT HAPPENS IN THE METHOD, IF THE VARIABLE IS MUTATED OR NOT, AND WHAT THE RETURN VALUE (LAST LINE RUN OF METHOD IS)."

end 


if answer == 'mc'

  puts " is the method call assigned to a variable (y o n)?"
  method_call_assigned_variable = gets.chomp

  if method_call_assigned_variable == 'y'

    puts "what is the variable name assigned to RV of method call?"
    method_call_variable_name = gets.chomp

    puts "on what line is the variable name assigned to the method call?"
    method_call_variable_name_line = gets.chomp

    puts "what is the name of the method called?"
    method_name = gets.chomp

    puts " on what type of object its the method called on?"
    method_call_object_type = gets.chomp

    puts " what is the value of that object/"
    method_value = gets.chomp
 

    method_call_string = "on `line #{method_call_variable_name_line}`  the local variable `#{method_call_variable_name }` is initialized and is assigned to the return value of the `#{method_name}` method call on the #{method_call_object_type} object with value `#{method_value}`."

  elsif method_call_assigned_variable == 'n'

    puts "on what line is the  method call?"
    method_call_line = gets.chomp

    puts "what is the name of the method called?"
    method_name = gets.chomp

    puts " on what type of object its the method called on?"
    method_call_object_type = gets.chomp

    puts " what is the value of that object"
    method_value = gets.chomp
   
    
    method_call_string = "on `line #{method_call_line}` the `#{method_name}` method is called on the #{method_call_object_type} object with value `#{method_value}`."
  end 

  puts "what lines does the block span? (1-3)"
  block_lines = gets.chomp
  
  puts "what is the block type ( do..end , {..})?"
  block_type = gets.chomp 
  
  puts "how many paramters are passed to the block?"
  number_block_parameters = gets.chomp 

  puts "what is the parameter name?"
  block_parameter_name = gets.chomp 
  
  block_lines_and_type = "The `#{block_type}` alongside the `#{method_name}` invocation on `lines #{block_lines}` defines a block, with #{number_block_parameters} parameter `#{block_parameter_name}"

  if method_name == 'map'

    method_description = "The `map` method iterates through the #{method_call_object_type} , passing each element of the #{method_call_object_type} to the block and assigning it to the variable `#{block_parameter_name}`, with each iteration the return value of the block is then moved into a new array and that new array is returned. "

  elsif method_name == 'map!'

    method_description = "The `map!` method iterates through the #{method_call_object_type} and modifies the current element of the original #{method_call_object_type} object, replacing it with the return value of the block for each iteration.  when it finishes every iteration it returns the original, albiet modified, #{method_call_object_type} with the return values of the block for each element."
  
  elsif method_name == 'each'

    method_description = "The `each` method iterates through the #{method_call_object_type}, passing each element of the #{method_call_object_type} to the block and assigning it to the variable `#{block_parameter_name}`. The `each` method returns the original value of the #{method_call_object_type}, it does not take into consideration the return value of the block."

  elsif method_name == 'select'

    method_description = "The `select` method considers the truthiness of the return value of the block.  If the return value of the block evaluates to `true` it takes the element and puts it in a new #{method_call_object_type} and returns the #{method_call_object_type} after each iteration."
  
  elsif method_name == 'select!'

    method_description = "The `select!` method considers the truthiness of the return value of the block.  If return value of the block evaluates to `true`, the element of the current iteration of the #{method_call_object_type} is maintained (not deleted) otherwise the element is removed from the array.  The original , albiet modified, #{method_call_object_type} is returned after each iteration."
  end 

puts "
#{method_call_string}

#{block_lines_and_type}

#{method_description}

WHAT DOES THE BLOCK RETURN?

"
end 

 

