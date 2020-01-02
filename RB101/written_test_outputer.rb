puts "what type is this: method defintion (md) , method call (mc)"
answer = gets.chomp 

  if answer == md 

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

    puts "what is the value of the variable that is passed to the method return value outputing method?"
    value_return_value_output_method = gets.chomp 

    puts "
    on `line #{method_lines_span}` the method `#{method_name}` is defined that takes
    `#{method_paramters_count}` parameter `#{method_parameter_name_1}`.

    On `line #{local_variable_line}` the local variable `#{local_variable_name}` is initialized
    and the #{local_variable_object_type} object with value `#{local_variable_object_value}` is assigned to it.

    on `line #{outputing_method_line}` the test method `#{type_return_value_output_method}` is called with the 
    local variable `#{local_variable_name}` passed to it as an argument. The return value of this method call
    is then passed to the method  `#{type_return_value_output_method}` . `#{type_return_value_output_method}`
    calls the method `inspect`, which returns a string object containing a human-readable 
    representation of the object, this this string is then displayed.

    On `line #{method_lines_span.first}` the variable ,`#{method_parameter_name_1}`, local to the method defintion
    test is set to point to the same #{local_variable_object_type} object which is being referenced by the 
    local variable `#{local_variable_name}` , with value `#{local_variable_object_value}`.

    ENTER DESCRIPTION OF WHAT HAPPENS IN THE METHOD, IF THE VARIABLE IS MUTATED OR NOT, AND WHAT THE RETURN VALUE 
    (LAST LINE RUN OF METHOD IS)."
  end 
end
