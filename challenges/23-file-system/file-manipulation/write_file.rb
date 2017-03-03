text = ARGV[ARGV.index('--phrase') + 1]

<<<<<<< HEAD
File.open('soy_nuevo.md', 'w+') {|file| file.puts(text)}
=======
File.open('soy_nuevo.md', 'a+') {|file| file.puts(text)}
>>>>>>> upstream/master
