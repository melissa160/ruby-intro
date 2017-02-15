# Factorial


# Tu solucion abajo:

def factorial1(int)
	a = 1
	int.downto(1) {|x| a = x*a}
	a
end

p factorial(20)

def factorial2(number)
  result = 1
  while number>=1
    result = result*number
    number = number-1
  end
  return result
end


def factorial3(number)
  if number <= 1
    1
  else
    (1..number).inject(:*)
  end
end



def factorial4(n)
  if n == 0
     n = 1
  else
    n * factorial(n-1)
  end
end
