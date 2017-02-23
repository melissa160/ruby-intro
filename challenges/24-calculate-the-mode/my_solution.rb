# Pseudocode



# 1. Solucion Inicial
def mode(array)
  result = []
  hash = Hash.new(0)
  array.each do |item|
    hash[item]=  hash[item] + 1
  end
  hash.each do |word, freq| 
    result << word if freq == hash.values.max 
  end
  result
end
mode(["hola",1,2,3,4,5,"hola","como","como"])




# 2. Solucion con Refactor





###### DRIVER CODE #########
