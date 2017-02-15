# # Pretty Triangle

def print_triangle(arg)
    array = (1..arg).to_a
    dot = []
    array.map do |num|
        dot.push("*" *  num)
    end
    puts dot.join(',')
end


# # Tu solucion abajo:
# def print_triangle(num)
# 	(1..num).each do |x|
# 		print "*"*x + "\n"
# 	end
# end


# #print_triangle(2)
# print_triangle(5)
# #print_triangle(0)

def print_triangle2(arg)
    array = (1..arg).to_a
    dot = []
    array.map do |num|
       dot.push("*" *  num)
    end
    puts dot
end

print_triangle(6)


def print_triangle3 int1
  if int1<=0

   else
     otro=0
       while (otro < int1)
         otro += 1
         h = Hash.new {|h,k| h[otro] = '*'*otro.to_i}   #=> {}
         puts h.default(otro)
       end
   end
end








# def print_triangle(rows)
#   multiplicator = 1
#   while multiplicator <= rows
#     puts ("*" * multiplicator)
#     multiplicator +=1
#   end
# end


