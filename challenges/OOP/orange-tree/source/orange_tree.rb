# Esta es la forma en que se crean errores personalizados
class NoOrangesError < StandardError
end

class OrangeTree
  # Envejeze el arbol
  attr_reader :height, :age

  def initialize
    @height = 0
    @age = 0
    @oranges = []
  end

  def age!
    @age += 1
    @height += 0.5 if @height < 5
    grow
  end

  def age
    @age
  end

  def height
    @height
  end

  def dead?
    @age == 20
  end

  def grow
    if @age > 2
      (rand(5..10)).times do |item|
        @oranges << Orange.new(rand(3..10))
      end
      # p @oranges
    end
  end
  # Devuelve true si hay naranjas en el arbol, false si no
  def any_oranges?   
    if @oranges.empty? 
      false
    else
      true
    end

  end

  # Devuelve una naranja si hay una
  # Dispara un NoOrangesError de lo contrario
  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?

    # Logica para sacar naranjas va aca
    @oranges.pop 

  end
end

class Orange
  # Crea una naranja con determinado +diameter+
  attr_reader :diameter

  def initialize(diameter)
    @diameter = diameter
  end

  def diameter
    @diameter
  end
end


######## DRIVER CODE ###########

tree = OrangeTree.new

tree.age! until tree.any_oranges?

puts "El arbol tiene #{tree.age} años y mide #{tree.height} metros"

until tree.dead?
  basket = []
  p "en basket"
  # Pone las naranjas en la canasta
  while tree.any_oranges?
    basket << tree.pick_an_orange!
  end


  avg_diameter = basket.map { |orange| orange.diameter}
  avg_diameter = avg_diameter.reduce(:+) / basket.length
  puts "Reposte Año #{tree.age}"
  puts "Altura arbol: #{tree.height} metros"
  puts "Cosecha: #{basket.size} naranjas con un diametro promedio de #{avg_diameter} cm"
  puts ""

  # Envejeze el arbol en 1 año
  #
  tree.age!
end

puts "Miercoles, se murio el arbol!"

