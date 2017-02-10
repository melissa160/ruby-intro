# Calculate a Grade

# Tu solucion abajo:
def get_grade(prom)
	if prom < 60
		"F"
	elsif (prom >= 60 && prom < 70)
		"D"
	elsif  (prom >= 70 && prom < 80)
		"C"
	elsif (prom >= 80 && prom < 90)
		"B"
	else
		"A"
	end
end

