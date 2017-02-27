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





###### DRIVER CODE #########
