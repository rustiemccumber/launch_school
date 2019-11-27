=begin
Write a method that takes a string argument and returns a new string that contains the value of 
the original string with all consecutive duplicate characters collapsed into a single character. 
You may not use String#squeeze or String#squeeze!.

-input:string with duplicate characters
-output:string with no duplicates

algorithim
-split string into chars
-initialize new empty array
-each through chars
-if char != empty_array.last 
   empty << char
 empty_array.join

example
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

=end 
=begin 
def crunch(string)
  array_string = string.chars
  array_crunched = []

  array_string.each do |letter|
    if array_crunched.last != letter
      array_crunched << letter
    end
  end 
  array_crunched.join 
end
=end 

def crunch(string)
  string_crunch = []
  string.each_char do |letter| 
    if letter != string_crunch.last
      string_crunch << letter
    end
  end
  string_crunch.join
end

p crunch('ddaaiillyy ddoouubbllee') 
p crunch('4444abcabccba')
p crunch('ggggggggggggggg')
p crunch('a') 
crunch('') == ''