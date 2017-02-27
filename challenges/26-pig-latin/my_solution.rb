# Pseudocode
<<<<<<< HEAD
# GET una palabra de input del usuario.
# IF la palabra empieza con una vocal, no cambiarla.
# ELSE reemplaza la palabra con su equivalente pig latinizado
#   GET all of the consonantes before the first vowel in the word.
#   SET las consonantes al final de la palabra y agrega el sufijo `ay`.
# ENDIF
# PRINT la palabra pig latinizada.
=======


>>>>>>> upstream/master

# 1. Solucion Inicial


<<<<<<< HEAD
 # flag = false
	
	

	# def inspec_vowel(input)
	# 	vowels = ["a", "e", "i", "o", "u"]
	# 	vowels.each do |vowel|
	# 		if input[0] == vowel
	# 			input[0]
	# 		else
	# 			flag = true
	# 		end
	# 	end
	# end

	# inspec_vowel(input)

	# if flag
	# 	input.each_char do |char| #iteramos sobre la palabra dada
	# 			if char != inspec_vowel(input) # si el caracter es diferente a vocal
	# 				cons = cons + char # entonces lo almacena en cons
	# 				cons 
	# 			end
	# 		end
		
	# end

input = gets.chomp
final = input.scan(/^[^aeiou]*/).join("")
final2 = input.gsub(/^[^aeiou]*/, "")

final
final2

if 	final == ""
	p input
else
	p "#{final2}#{final}ay"
end
=======
>>>>>>> upstream/master




# 2. Solucion con Refactor





###### DRIVER CODE #########
