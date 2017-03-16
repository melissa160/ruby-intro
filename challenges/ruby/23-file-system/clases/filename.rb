require 'pathname'

<<<<<<< HEAD
#puts __FILE__
#puts File.dirname(__FILE__)
base = File.basename(__FILE__)

#pn = Pathname.new("/home/meli/MAKEITREAL/ruby-intro/challenges/23-file-system/clases/filename.rb")

#base = File.basename(pn)

puts "Hola mundo desde #{base}"
=======
file = Pathname.new(__FILE__)

pn = File.basename(file)

p "Hola mundo desde #{pn}"
>>>>>>> upstream/master
