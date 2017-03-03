# Count Between

# Tu solucion abajo:

<<<<<<< HEAD
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


=======
>>>>>>> upstream/master
[1,2,3,4,5,6]
upper = 4
lower = 2


<<<<<<< HEAD
def count_between1(arr, upper, lower)
  arr.count {|x| (x >= lower) && (x<= upper)}
end

def count_between2(arr, lower, upper)
=======
def count_between(arr, upper, lower)
  arr.count {|x| (x >= lower) && (x<= upper)}
end

def count_between(arr, lower, upper)
>>>>>>> upstream/master
  count = 0
  arr.each do |x|
    if (x >= lower) && (x<= upper)
      count = count + 1
    end
  end
  count
end
<<<<<<< HEAD

=======
>>>>>>> upstream/master
