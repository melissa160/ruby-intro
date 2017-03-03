# Pseudocode



# 1. Solucion Inicial
<<<<<<< HEAD
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
=======

def mode(array)
 freq = array.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
 array.max_by {|v| freq[v]}
end
>>>>>>> upstream/master




# 2. Solucion con Refactor





###### DRIVER CODE #########
