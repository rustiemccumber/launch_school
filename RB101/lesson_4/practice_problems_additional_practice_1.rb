flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]


flintstones_names = {}
flintstones.each_with_index do |item, index|
  flintstones_names[item] = index
end


puts flintstones_names