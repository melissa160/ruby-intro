<<<<<<< HEAD
# Pseudocode



# 1. Solucion Inicial
def mode(array, n) #def metido moda
  result = [] # creamos un array vacio
  hash = Hash.new(0) #creamos un hash vacio
  array.each do |item| #iteramos sobre el arreglo dado 
    hash[item] =  hash[item] + 1 #ingresamos al hash cada key (item del array) y se le asigna como value su frecuencia (repeticiones)
  end

  hash.each do |word, freq| #iteramos sobre el hash
 
    los_maximos = hash.values.max(n).uniq! #creamos una variable que guarde las n frecuancias maximas como un array
    los_maximos.each do |max| #iteramos sobre los_maximos
   
        if freq == max # si la frecuencia es igual a cada maximo (max)
            p "#{word}: #{freq} ocurrences" #imprime word
        end
    end
  end
  result
end



def my_scan(filename, n) #definimos un metodo my scan que recibe dos parametros
  text = File.read(filename) #creamos una variable tipo archivo esperando recibir un nombre de archivo y ya sabe que debe leerlo (read)
  word = text.scan(/(\w+)/).flatten #creamos una variable que toma el archivo lo escanea convirtienfolo en un array de strings plano!
  p mode(word, n) # llamamos el metodo mode, que ya habiamos creado previamente
end

my_scan("source.txt", 3)



#my_scan("source.txt", 5)

# 2. Solucion con Refactor





=======

# Pseudocode
# 1. Solucion Inicial
# Pseudocode
# 1. Solucion Inicial
# def most_common_words filename, num
#
# end
#
filename ='./source.txt'


def most_common_words (filename,number)
  hash = Hash.new
  file = File.open(filename, "r")
  finalResult = []
  compare = ["The","the", "his",'by','was', 'for', 'Set', 'or', "pp.", "with", "that", "of", "and", "in", "to", "a", "is", "as"]
  file.each_line do  |line|
    words = line.split
    words.each do |word|
      if hash.has_key?(word)
        hash[word] = hash[word] + 1
      else
        hash[word] = 1
      end
    end
  end

  hash.each do |key, value|
    if compare.include?(key)
        hash.delete(key)
    end
  end

  hash = hash.to_a
  hash.sort_by! do |item|
    item[1]
  end
  hash = hash.reverse.to_h
  hash.each do |key, value|
    if finalResult.length < number
        finalResult << "la palabra '#{key}' tiene '#{value}' ocurrencias"
    end
  end
  puts finalResult
end
most_common_words(filename, 4)
# 2. Solucion con Refactor
###### DRIVER CODE #########
# 2. Solucion con Refactor
>>>>>>> upstream/master
###### DRIVER CODE #########
