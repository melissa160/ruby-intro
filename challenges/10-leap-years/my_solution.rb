# Leap Years




# Tu solucion abajo:
def leap_year?(año)
#	if año%4 == 0 && año%100 != 0
#		true
#	elsif año%4 == 0 && año%400 == 0
#		true
#	else 
#		false
#	end

#    año%400==0 && !(año%100==0) && año%4 == 0

	if año%400==0 
		true
	elsif año%100==0
		false
	elsif año%4 == 0
		true
	else
		false
	end

end
