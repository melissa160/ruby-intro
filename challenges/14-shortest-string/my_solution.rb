# Shortest String

#Tu solucion abajo:
def shortest_string(arr)
	
	arr_length = []
	if arr.length == 0
		nil
	else
		arr.each do |val|
			arr_length.push(val.length)
		end
		indice = arr_length.index(arr_length.min)
		arr[indice]
	end
end

#shortest_string([])

#otra forma
#arr.min{|a,b| a.length <=> b.length}