# Shortest String

#Tu solucion abajo:
<<<<<<< HEAD
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

def shortest_string2(array)
=======

def shortest_string(array)
>>>>>>> upstream/master
  return nil if array.empty?
  array.sort_by! {|x| x.length}
  array.first
end

<<<<<<< HEAD
def shortest_string3(array)
  array.min({|a,b| a.length <=> b.length})
end

=======
def shortest_string(array)
  array.min({|a,b| a.length <=> b.length})
end
>>>>>>> upstream/master
