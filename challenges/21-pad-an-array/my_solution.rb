<<<<<<< HEAD
# # Mi solucion:
# def pad(arr, min, relleno=nil)
# 	# arr_aux = arr.clone
# 	# if arr_aux.length < min 
# 	# 	(min-arr_aux.length).times {arr_aux.push(relleno)}
# 	# end
# 	# arr_aux
# 	arr_aux =[]
# 	arr_aux.push(arr)
# 	if arr.length < min
# 		(min-arr.length).times {arr_aux.push(relleno)}
# 	end
# 	arr_aux
	
# end

# def pad!(arr, min, relleno=nil)
# 	if arr.length < min 
# 		(min-arr.length).times {arr.push(relleno)}
# 	end
# 	arr
# end

# pad([1,2,3], 6)
# p pad([1,2,3], 0)
# p pad([1,2,3], 1, "beso")

def my_map(array)
	result = []
	#array.drop_while {|element| result << yield(element)}
	(self.array.length).times do |index|
		result << yield(self[index])
	end
	result

end

#p my_map([1,2,3,4]) {|n| n*2}

def my_filter(array)
	result = []
	array.each do |element|
		if (yield(element))
			result << element
		end
	end
	result
end

#p my_filter([1,2,3,4,5,6,7,8]) {|n| n%2 == 0}
class Array
	def my_find
		var = nil
		self.each do |element|
			if yield(element)
				var = element
			end
		end
		var
	end

	def my_find_all
		var = []
		self.each do |element|
			if yield(element)
				var << element
			end
		end
		var
	end

	def my_inject(acu)
		var = acu
		self.each do |x|
			var = yield(var,x)
		end
		var
	end

	def my_min
		self.my_inject(self.first) {|acu,x| x<acu ?   x : acu}		
	end
	
	def my_max

	end
end
#p [1,2,3,4].my_inject({}){|acu,n| acu[n]=n; acu} //devuelvo acu al final de la linea porque acu es el hash
#p [30,2,3,4].my_find_all {|x| x > 2}
#p [1,2,3,4,5,6].my_inject(1) {|acu,x| acu*x }
p [9,2,3,4,5,60].my_min

def pad!(arr, num, word=nil)
	if num <= arr.length
		arr
	else
		(num-arr.length).times {arr << word}
	end
	arr
end

def pad(arr, num, word=nil)
	new_arr = []
	new_arr << arr
	new_arr.flatten!
	if num <= new_arr.length
		new_arr
	else
		(num-new_arr.length).times {new_arr << word}
	end
	new_arr
	
end
pad([1,2,3], 5, 'apple')

=======
class Array

  def pad (min_size, value = nil)
     copy = self.clone
    if copy.length >= min_size
      return copy
    else
      until copy.length == min_size
        copy.push(value)
      end
      copy
    end
  end

  def pad! (min_size, value = nil)
    if self.length >= min_size
      return self
    else
      until self.length == min_size
        self.push(value)
      end
      self
    end
  end

end
>>>>>>> upstream/master



