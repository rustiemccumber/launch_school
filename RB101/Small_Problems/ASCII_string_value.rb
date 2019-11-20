=begin
Write a method that determines and returns the ASCII string value of a string that is passed in
as an argument. The ASCII string value is the sum of the ASCII values of every character in the string.
(You may use String#ord to determine the ASCII value of a character.)

-input: string
-ouput: ASCII value of string

algorythim:
String#ord

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0
=end

=begin
def ascii_value(string)
  string.chars.map { |letter| letter.ord}.inject(0, :+)
end
=end

#string.chars.inject {|sum, n| sum + n.ord } why doesn't this work

def ascii_value(string)
  string.chars.inject(0) { |sum, n| sum + n.ord}
end

puts ascii_value('Four score')
puts ascii_value('Four score')
puts ascii_value('Launch School')
puts ascii_value('a')
puts ascii_value('')
