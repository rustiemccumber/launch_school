=begin

Mad libs are a simple game where you create a story template with blanks 
for words. You, or another player, then construct a list of words and place 
them into the story, creating an often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a verb,
 an adverb, and an adjective and injects those into a story that you create.

Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

-input: noun, verb, adjective, adverb
-output: a sentence using all of them

algorithm: 

sentence structure:
Prompt:
enter a noun
  noun = gets.chomp
enter a verb
enter an adjective
enter and adverb

"do you #{verb} your #{adjective} #{noun} #{adverb}?  That's so cool"

Do you walk your blue dog quickly? That's hilarious!

=end 

def prompt(message)
 print "Enter a #{message}: "
end 

prompt('noun')
  noun = gets.chomp
prompt('verb')
  verb = gets.chomp
prompt('adjective')
  adjective = gets.chomp
prompt('adverb')
  adverb = gets.chomp 

puts "do you #{verb} your #{adjective} #{noun} #{adverb}?  That's so cool"


