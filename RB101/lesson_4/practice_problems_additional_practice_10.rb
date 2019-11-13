
=begin

Modify the hash such that each member of the Munster family has an additional "age_group" key that has
one of three values describing the age group the family member is in (kid, adult, or senior).
Your solution should produce the hash below

-input nested hash 
-output nested has with addition of age group 

algoythim

-iterate the hash
-evaluate the hash "age" key value for each Name key
-write a series of if statements to append the hash with the appropriate age_group key/value 


example output

{ "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

=end 


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}




munsters.each do |key, details|

   case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end

end 

puts munsters