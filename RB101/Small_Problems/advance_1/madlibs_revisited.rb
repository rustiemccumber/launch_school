# Let's build another program using madlibs. We made a program like this in the easy exercises.
# This time, the requirements are a bit different.

# Make a madlibs program that reads in some text from a text file that you have created, 
# and then plugs in a selection of randomized nouns, verbs, adjectives, and adverbs into that 
# text and prints it. You can build your lists of nouns, verbs, adjectives, and adverbs directly
# into your program, but the text data should come from a file or other external source. 
# Your program should read this text, and for each line, it should place random words of 
# the appropriate types into the text, and print the result.

# The challenge of this program isn't about writing your program; it's about choosing how to 
# represent your data. Choose the right way to structure your data, and this problem becomes 
# a whole lot easier. This is why we don't show you what the input data looks like; the input 
# representation is your responsibility.

# Example output:

#input: text-file with nouns, verb, asjectives and adverbs 
#output: print of text file with parts replaced with non verbs etc 

=begin 
- strip all the white spaces from the text
- initialize seperately a collection of nouns, adjectives, and adverbs, and verbs set them equal to variables
-
- split the string into a array
- iterate through the string with map! 
- create a case sentence that will randomly replace the word with 


=end 

# The sleepy brown cat noisily
# licks the sleepy yellow
# dog, who lazily licks his
# tail and looks around.
 
  # noun = %w(cat dog fish shark)
  # verb = %w(ran walked drove fly)
  # adverb = %w(quickley slowly loudly)
  # adjective = %w(big fat smelly)

  # text = File.read('madlibs_read.txt')
  # text_no_white = text.strip

  # array_text = text_no_white.split 

  # array_text.map! do |word|
  #   case word
  #   when 'noun' then noun.sample
  #   when 'verb' then verb.sample
  #   when 'adverb' then adverb.sample
  #   when 'adjective' then adjective.sample
  #   else              
  #     word 
  #   end 
  # end

  #  p array_text.join(" ")

ADJECTIVES = %w(quick lazy sleepy ugly).freeze
NOUNS      = %w(fox dog head leg cat tail).freeze
VERBS      = %w(spins bites licks hurdles).freeze
ADVERBS    = %w(easily lazily noisly excitedly).freeze

File.open('madlibs_read.txt') do |file|
  file.each do |line|
    puts format(line, noun:      NOUNS.sample,
                      verb:      VERBS.sample,
                      adjective: ADJECTIVES.sample,
                      adverb:    ADVERBS.sample)
  end
end