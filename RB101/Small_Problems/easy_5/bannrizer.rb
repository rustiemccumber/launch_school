=begin

Write a method that will take a short line of text,
and print it within a box.

-input string
-input string within a box 
  box top = 
+-x-+
|   |
x x x
|   |
+-x-+

example
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |

| To boldly go where no one has gone before. |

|                                            |
+--------------------------------------------+

Further exploration:

if message is greater than 76 
  -find last space before 76 in message
  -save the last part of the message to a new string
   -subtract the first space
   -puts the first and second message

=end
=begin 
#my_solution
def print_in_box(string)
  top_bottom = "+--+"
  sides = "|  |"
  string_with_sides = "| " + string + " |"
  string.length.times {|i| top_bottom.insert(2, '-') } 
  string.length.times {|i| sides.insert(2, ' ') } 

  puts top_bottom
  puts sides
  puts string_with_sides
  puts sides
  puts top_bottom
end 
=end 


#mulit_line(message)[0])
#Launch school solution 

def print_in_box(message)
  array_messages_box = multi_line(message)
  horizontal_rule = "+#{'-' * ((array_messages_box).first.length + 2)}+"
  empty_line = "|#{' ' * ((array_messages_box).first.length + 2)}|"
  puts horizontal_rule
  puts empty_line
  array_messages_box.each do |sentence|
    if sentence.size != array_messages_box.first.length
      sentence << " " until sentence.size == array_messages_box.first.length
    end
    puts "| #{sentence} |" 
  end 
  puts empty_line
  puts horizontal_rule
end  

def multi_line(message) 
  array_messages = []
  loop do 
    if message.size > 76 
      array_messages << message.slice!(0..75)
    elsif message.size < 76 
      array_messages << message.slice!(0..-1)
      break if message.size == 0
    end 
  end 
  array_messages 
end 

print_in_box('the cat went to the store to get some food but found there was no food at the store when he got therejklda')
  
