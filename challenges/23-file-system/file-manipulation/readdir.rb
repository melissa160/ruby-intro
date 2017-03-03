# Escribe aca el codigo para leer los contenidos de la carpeta testFiles, no debes leer los contenidos de la carpeta nesteada. El resultado final es que imprimas los contenidos en la consola.
<<<<<<< HEAD


#files =  Dir.new(Dir.pwd+"/testFiles")


=======
>>>>>>> upstream/master
dir = Dir.new('./testFiles')

dir.each do |item|
  puts File.read("#{dir.path}/#{item}") if File.file?("#{dir.path}/#{item}")
end
<<<<<<< HEAD

=======
>>>>>>> upstream/master
