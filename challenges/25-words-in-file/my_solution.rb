# Pseudocode



# 1. Solucion Inicial
def mode(array, n)
  result = []
  hash = Hash.new(0)
  array.each do |item|
    hash[item]=  hash[item] + 1
  end
  hash.each do |word, freq| 
    result << "#{word} #{freq}" if freq == hash.values.max 
  end
  result
end

def my_scan(filename, n)
	text = File.read(filename)
	word = text.scan(/(\w+)/).flatten
	p mode(word, 5)
end




my_scan("source.txt", 5)

# 2. Solucion con Refactor





###### DRIVER CODE #########
