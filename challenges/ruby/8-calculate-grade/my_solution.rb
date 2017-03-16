# Calculate a Grade

# Tu solucion abajo:
<<<<<<< HEAD
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
=======
>>>>>>> upstream/master

def get_grade(a,b,c, *)
  average = (a + b + c) / 3
  if average < 60
    "F"
  elsif average >= 60 && < 70
    "D"
  elsif average >= 70 && average < 80
    "C"
  elsif average >= 80 && average < 90
    "B"
  else
    "A"
  end
end

def get_grade(note)
  if note >= 90
    "A"
  elsif note >= 80
    "B"
  elsif note >= 70
    "C"
  elsif note >= 60
    "D"
  elsif note < 60
    "F"
  end
end
