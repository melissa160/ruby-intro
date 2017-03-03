# Pseudocode



# 1. Solucion Inicial
#require "pry"
class CreditCard
	
	def initialize(number)
  		if number.to_s.length == 16
  			@number = number
  			check_card
  		else
    		raise ArgumentError.new("Debe ser exacto a 16 digitos")
  		end
	end
	
	def nums_to_array
		@number.to_s.split("")
	end


	def string_num_to_int_num
		nums_to_array.map do |n|
			n.to_i
		end
	end

	def mult_by_2_if_odd
		arr = []
		string_num_to_int_num.each_with_index do |n, i|
			
			if i.even?
				arr << n * 2
			else 
				arr << n
			end
		end
		arr
	end
# [1,12,3,14,4,16,5,18,6,20].map {|n|; if n<10; n; else; n.to_s.split("").map {|char|; char.to_i};end}

	def divide_chars
		mult_by_2_if_odd.map do |n|
			if n < 10
				n
			else 
				n.to_s.split("").map do |char|
					char.to_i
				end
			end
		end
	end

	def add
		divide_chars.flatten.reduce(:+)
	end
	
	def check_card
		add % 10 == 0
	end
	#binding.pry
end

num = 4563960122001999
my_card = CreditCard.new(num)
# my_card.check_card

# 2. Solucion con Refactor





###### DRIVER CODE #########
