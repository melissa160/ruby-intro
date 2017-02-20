
# Practica de Arrays

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "Tactical 10mm"]


# 1. Itera sobre el array zombie_apocalypse_supplies, imprimiendo cada elemento dentro del array.
# ----
def iterar(arr)
 p arr_supplies.each {|supplie| p supplie}
end

#puts zombie_apocalypse_supplies

#zombie_apocalypse_supplies.each do |thing|
#  p thing
#end

# 2. Para mantenernos organizados, organiza el array zombie_apocalypse_supplies de forma alfabetica.
# ----
def order(arr)
my_result = arr.sort_by do |a|
	        a.downcase
        end

result = ["binoculars", "CB radio", "compass", "hatchet", "rations", "shotgun", "Tactical 10mm", "water jug"]

p (my_result == result) ? true : false

end

#zombie_apocalypse_supplies.sort_by { |word| word.downcase }

# 3. Crea un metodo que mire si un item (string) esta dentro del arreglo zombie_apocalypse_supplies. Por ejemplo esta `boots` dentro de la lista de suministros?.
# ----
def incluido(arr)
  arr.include?("bin")
end

def is_there_thing?(thing, a)
  a.include?(thing)
end

#is_there_thing?('compass', zombie_apocalypse_supplies)

# 4. No puedes cargar muchas cosas, solo hay espacio para 5. Remueve todos los items del arreglo zombie_apocalypse_supplies que tengas mas de dos palabras, solo pueden quedar los 5 items compuestos de una sola palabra.
# ----
#zombie_apocalypse_supplies.map do |item|
def solo5(arr)
	arr.delete_if {|sup| sup.include?(" ")} 
	#p zombie_apocalypse_supplies
end
#end



#result = zombie_apocalypse_supplies.select {|thing| !thing.include?(' ')}

# 5. Encontraste otro sobreviviente! esto significa que pueden combinar sus suministros. Crea un nuevo arreglo de suministros combinados en base a tus zombie_apocalypse_supplies, y los sumnitros del otro sobreviviente. Debes deshacerte de todos los suministros que esten duplicados. No olvides revisar la documentacion de Array.
def other_surv(zombie_apocalypse_supplies)
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]

#solucion 1:
#result = zombie_apocalypse_supplies + other_survivor_supplies
#result = result.uniq

#solucion 2:
result = zombie_apocalypse_supplies | other_survivor_supplies
p result
#mi solucion
#zombie_apocalypse_supplies.push(other_survivor_supplies).flatten.uniq 

end
other_surv(zombie_apocalypse_supplies)

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Itera sobre el hash extinct_animals, imprimiendo cada vez el la pareja de key/value con un dash (-) entre ellos y un asterisco (*) entre cada elemento (animal extincto).
# ----


def imprimir(extinct_animals)
  extinct_animals.each do |animal, year|
    print "*#{animal}-#{year}\n"
  end
end

# extinct_animals.each do |animal, year|
#   puts "#{animal}-#{year}"
#   puts '*'

# end


# 2. Elimina todos los animales que se extinguieron despues del año 1999, del hash extinct_animals. No uses metodos especiales solo `delete` e iteraciones.
# ----
def no_extinct(extinct_animals)
  extinct_animals.delete_if do |animal, year|
    year > 1999
  end
   extinct_animals
end


# extinct_animals.each do |animal, year|
#   extinct_animals.delete(animal) if year > 1999
# end


# 3. Nuestros calculos estaban muy mal, resulta que todos esos animales se extinguieron 3 años antes que la fecha dada. Actualiza los valores dentro de extinct_animals para que reflejen el valor real de la fecha de extincion.
# ----
#n = {}
def year_3(extinct_animals)
  extinct_animals.map do |animal, year|
        #n.store(animal, year-3)
    extinct_animals[animal] = year -3
  end
  extinct_animals
end
#p n

extinct_animals.each do |animal, year|
  extinct_animals[animal] = year - 3
end

# 4. Oiste que los siguientes animales podian estar extinctos, pero no estas seguro. Uno por uno revisa si se encuentran incluidos dentro del hash extinct_animals:
# "Andean Cat"
# "Dodo"
# "Tasmanian Tiger"
# "Saiga Antelope"
# ----
def oiste(extinct_animals)
  oiste = ["Andean Cat", "Dodo", "Tasmanian Tiger", "Saiga Antelope"]
  incluidos=[]
  extinct_animals.each do |animal, year|
    oiste.include?(animal) ? incluidos.push(animal) : nil
  end
  incluidos
end
# 5. Acabamos de encontrar que el Passenger Pigeon, realmente no esta extincto!
# Remuevelo del hash extinct_animals y devuelve su pareja de key/value como un arreglo de dos elementos. Puedes encontrar un metodo en la documentacion de la  clase Hash que te puede ayudar con esto.
# ----

#extinct_animals.delete_if {|key, value| key!="Passenger Pigeon"}.flatten
def remove(extinct_animals)
  extinct_animals.select {|key, value| key=="Passenger Pigeon"}.flatten
end

#extinct_animals.to_a.unshift(["Passenger Pigeon", 1914]).to_h.shift


# Practica, Estructuras nesteadas

# Imprime en la consola solo el elemento target ningun otro

# Target: "FORE"
array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

def imprime(target, array)
    # Intentos:
  # ============================================================  
  aux = ""
  array.flatten.each do |element| 
    element == target ? aux = element : nil 
  end
  puts aux
end
#imprime("FORE", array)
# Intentos:
# ============================================================

# array.flatten.each do |thing|
#   if thing == "FORE"
#     p thing
#   end
# end



# ============================================================

# Target: "congrats!"

hash1 = {outer: {
                  inner: {
                          "almost" => {3 => "congrats!"},

                          }
                }
        }

# Intentos:
# ===========================-=================================
def imprime_target(target, my_hash)
  if my_hash.values_at(target)
    p 
  elsif 
  p outer 
  #inner = outer.values_at("almost")
  #p inner
  # my_hash.keys.each do |key|
  #   p val[:inner].
  # end
  end
end
#imprime_target("congrats!", hash1)
# ============================================================

# Target: "finished"

nested_data = {array: ["array", {hash: "finished"}]}
# Intentos:
# ============================================================
def imprime_target2(target, nested_data)
  nested_data.flatten(2)[2].each do |key, val|
    if val == target
      puts val
    end
  end
end
#imprime_target2("finished", nested_data)
# ============================================================

#Usando un metodo del modulo Enumerable, modifica el array number_array de forma que cada numero se le sume 5. Lo vas a hacer de forma destructiva o no ?

number_array = [5, [10, 15], [20,25,30], 35]
def modify(number_array)
  number_array.flatten.map {|num| num + 5}
  p number_array
end
#modify(number_array)

# Crea un metodo que reciva un array como argumento, en este caso el array startup_names, y devuelva un array igual pero en donde a cada nombre se le a añadido 'ly' al final.

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def modify2(startup_names)
  startup_names.flatten.map do |val|
    val.insert(val.length, 'ly')
  end
  p startup_names
  
end
#modify2(startup_names)


#  a = ['hola', 'como', 'estas', 'como']



# a.each.with_index do |item, i|
#   'como'
#   a.each.with_index do |secondItem, y|
#     item = 'como'
#     secondItem  = 'como'
#     i = 1
#     y = 3
#     item == secondItem
#   end
# end


