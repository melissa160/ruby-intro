# Triangle Side

# Tu solucion abajo:
<<<<<<< HEAD
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
=======

>>>>>>> upstream/master

def valid_triangle?(x,y,z)
  if x <= 0 && y <= 0 && z <= 0
    false
  elsif (x + y) <= z || (x + z) <= y || (y + z) <= x
    false
  else
    true
  end
end


def valid_triangle?(a, b, c)
  if (a+b>c) && (a+c>b) && (b+c>a)
    true
  else
    false
  end
end
















<<<<<<< HEAD
>>>>>>> upstream/master
=======
>>>>>>> upstream/master
