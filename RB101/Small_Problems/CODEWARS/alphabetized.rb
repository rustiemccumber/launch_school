

The alphabetized kata
Re-order the characters of a string, so that 
they are concatenated into a new string in 
"case-insensitively-alphabetical-order-of-appearance" 
order. Whitespace and punctuation shall simply be removed!

The input is restricted to contain no numerals and 
only words containing the english alphabet letters.

Example:

alphabetized("The Holy Bible") # "BbeehHilloTy"



# - INPUT: string
# - OUTPUT: string with all the letters alphabetized and whitespaces remove


# -problem domain: whitespace remove, case insesntive, only alphabtt letters

# - implicit requirements:

# - clarifying questions:

# - edge cases

# Algorithm:

# split into an array 
# sort the array 
# join into a string
# remove white spaces 

# EXAMPLES: 

#  alphabetized("The Holy Bible") # "BbeehHilloTy" 



def alphabetized(string)

  array = string.split('')

  sorted_array = array.sort_by {|char| char.downcase}

  sorted_array.join.delete("\s")

end

p alphabetized("The Holy Bible") # "BbeehHilloTy"
