
user = ARGV.index("--user")
greeting = ARGV.index("--greeting")

if (user != nil && greeting != nil)
	puts "Hola #{ARGV[user+1]}, #{ARGV[greeting+1]}"
else
	puts "Algo salio mal"
	
end

