
=begin 

create a method that turns a string into a number

string_to_integer('4321') == 4321
string_to_integer('570') == 570

=end

def string_to_integer(string)
  string_number = {
    '1' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9,
    '0' => 0
  } 
  new_number_array = []
  string.each_char do |number|
    new_number_array << string_number[number]
  end
  new_number_array.inject {|a,i| a*10 + i} 
end


def string_to_integer_sign(string)

  call_string_to_integer = string_to_integer(string[1..-1])

  case string[0]
  when '-' then - string_to_integer(string[1..-1])
  when "+" then   string_to_integer(string[1..-1])
  else            string_to_integer(string)
  end
end

initial_string = '-123456'
p string_to_integer_sign(initial_string)