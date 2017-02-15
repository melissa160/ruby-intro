# # Pretty Triangle


# # Tu solucion abajo:
# def print_triangle(num)
# 	(1..num).each do |x|
# 		print "*"*x + "\n"
# 	end
# end

# #print_triangle(2)
# print_triangle(5)
# #print_triangle(0)

def print_triangle(arg)
    array = (1..arg).to_a
    dot = []
    array.map do |num|
       dot.push("*" *  num)
    end
    puts dot
end

print_triangle(6)