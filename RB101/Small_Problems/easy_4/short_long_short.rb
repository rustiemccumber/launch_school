=begin 

Write a method that takes two strings as arguments, determines the longest of the two strings,
and then returns the result of concatenating the shorter string, the longer string, 
and the shorter string once again. You may assume that the strings are of different lengths.

-write definition that takes too inputs

-input 2 strings:
  -one shorter string (xyz)
  -one longer string  (abcdef)

-out put
 -concatenating pattern of shorter-longer-shorter

 -algorythim
  -find string size
  -compare string 
  -string_short + string_long + string_short

 example
 xyzabcdefxyz

=end 

def short_long_short(string1, string2)

  if string1.size > string2.size
    string2 + string1 + string2
  else 
    string1 + string2 + string1
  end

end 

p short_long_short("xyz", "abcdef")