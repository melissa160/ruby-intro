# Escribe aca el codigo para leer los contenidos de la carpeta testFiles, no debes leer los contenidos de la carpeta nesteada. El resultado final es que imprimas los contenidos en la consola.

files =  Dir.new(Dir.pwd+"/testFiles")
p files
#each


p Dir.foreach(files) {|x| puts "#{x}" }