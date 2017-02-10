# Triangle Side

# Tu solucion abajo:
def valid_triangle?(num1, num2, num3)

	arr = [num1, num2, num3]

	max_side = arr.max
	sum_sides = num1+num2+num3

	#validar si todos los lados son positivos
	if arr.min <= 0
		false
	else
		#evaluar si es un triangulo valido
		if max_side < sum_sides - max_side
		  	true
		else 
			false
		end
	end

end
