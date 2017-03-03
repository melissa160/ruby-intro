# Factorial


# Tu solucion abajo:
<<<<<<< HEAD

def factorial1(int)
	a = 1
	int.downto(1) {|x| a = x*a}
	a
end

p factorial(20)

def factorial2(number)
=======
def factorial(number)
>>>>>>> upstream/master
  result = 1
  while number>=1
    result = result*number
    number = number-1
  end
  return result
end


<<<<<<< HEAD
def factorial3(number)
=======
def factorial(number)
>>>>>>> upstream/master
  if number <= 1
    1
  else
    (1..number).inject(:*)
  end
end



<<<<<<< HEAD
def factorial4(n)
=======
def factorial(n)
>>>>>>> upstream/master
  if n == 0
     n = 1
  else
    n * factorial(n-1)
  end
end
