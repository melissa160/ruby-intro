# Count Between

# Tu solucion abajo:
def count_between(arr, l_inf, l_sup)
	range = []
	arr.each do |val|
		if val>=l_inf && val<=l_sup
			range << val
		end
	end
	range.length
end

p count_between([1,2,3,4], 2, 4)

#otra forma
#arr.count {|x| x >= l_inf && x <= l_sup}