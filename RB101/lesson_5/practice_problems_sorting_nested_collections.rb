=begin 
# practice problem 1
arr = ['10', '11', '9', '7', '8']
arr.sort! { |a, b| a.to_i <=> b.to_i}
p arr


books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books.sort_by! {|book| book[:published]}

p books

=end 
=begin 
demonstrate how you would get g 

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]   
 arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]  
arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]
arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
hsh1["b"][1]


hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
hsh2[:third].key(0)


#demonstrate how you would change 3 to a 4
arr1 = [1, [2, 3], 4]
arr1[2] = 3 

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[1][:d]=3

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


total_male_age = 0
munsters.each_value do |details|
  total_male_age += details["age"] if details["gender"] == "male"
end

p total_male_age 


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key, value|
  puts "#{key} is a#{value['age']} year- old #{value['gender']}"
end 

a = 2
b = [5, 8]
arr = [a, b]
#arr = [2, [5, 8]]

arr[0] += 2
arr[1][0] -= a
p a
p b

#a = 4
#b = [1, 8] 

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], 
third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = 'aeiou'

hsh.each do |key, value|
  value.each do |word|
    word.chars.each {|char| puts char if vowels.include?(char)}
  end
end 



# return new a new array of the same structure with sub arrays ordered in decending order

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]


arr.map do |x|
  x.sort {|a, b| b <=> a}
end


#use the map method to return a new array 
#identical in structure to the original but 
#where the value of each integer is incremented by 1.

array = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

array.map do |x|
  incremented_hash ={}
  x.map do |key, value|
    incremented_hash[key] =  value + 1
  end 
 print incremented_hash
end 

#use a combination of methods including select or reject method to return a new array 

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |x|
  x.select do |int|
    int % 3 == 0
  end
end 



#without using to_h write code where the key is the first item in each sub array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hsh = {}
arr.each do |subarr|
  hsh[subarr[0]] = subarr[1]
end
p hsh 



#Given the following data structure, return a new array containing the same sub-arrays as the 
#original but ordered logically by only taking into consideration the odd numbers they contain.
# finally array should look like [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort_by do |x|
  x.select do |num|
    num.odd?
  end
end 



# given hash write a code to return an array containing the colors of the fruits and the sizes
# of the veggies. sizes upcase, colors capitalized
# output = [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

output = []

hsh.each do |item|
  item.each do |inner_hash|
    inner_hash[:colors].each do |color|
      color.upcase!
    end 
    output << inner_hash[:size].upcase 
    output << inner_hash[:colors]
  end 
end 
p output 


Given this data structure write some code to return 
an array which contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.select do |hsh|
  hsh.all? do |key, value|
    value.all? do |number|
      number.even?
    end
  end
end 
=end


