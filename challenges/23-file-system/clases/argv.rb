
<<<<<<< HEAD
user = ARGV.index("--user")
greeting = ARGV.index("--greeting")

if (user != nil && greeting != nil)
	puts "Hola #{ARGV[user+1]}, #{ARGV[greeting+1]}"
else
	puts "Algo salio mal"
	
end

=======
if ARGV.index("--user") && ARGV.index("--greeting")
    name_index = ARGV.index("--user") + 1
    name_value = ARGV[name_index]
    greeting_index = ARGV.index("--greeting") + 1
    greeting_value = ARGV[greeting_index]
    p "Hola #{name_value} #{greeting_value}"
else
    p 'Algo salio mal'
end
>>>>>>> upstream/master
