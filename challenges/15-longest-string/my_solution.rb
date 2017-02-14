# Longest String

# Tu solucion abajo:

def longest_string(arr)
	len = 0
	elegido = 0
	arr.each.with_index do |val, indice|
		if val.length > len
			elegido = indice
			len = val.length
		end
	end
	arr[elegido]
end