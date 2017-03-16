# Este es un ejemplo de como puedes guiar tu diseño usando pruebas.
# Al correr este codigo e ir solucionando las pruebas que fallan una por una deberias ser capaz de terminar el reto facilmente.

########################################################
# design the classes (partially complete)
########################################################
# Q: Que clases, metodos y attributos faltan?
# - No cambies el codigo existente, solo añadele cosas.

module Reality
  def passage_of_time
    p "time passes ..."
    # que mas deberias pasar en este metodo?
    @walked = false
    @fed = false
    @stretched = false
  end

end

class Pet
  include Reality

  def walked?
    @walked  #true or false
  end

  def walk!
    @walked = true
    "happy dog."
  end

  def fed?
    @fed
  end

  def eat!
    @fed = true
  end
end

<<<<<<< HEAD
class Dog < Pet
=======
class Dog
  def initialize(name)
    @name = name
    begin
      raise ArgumenError.new('Wron name input') if name.is_a?(Fixnum)
      @name = name
    rescue
      @name = 'Default name'
    end
  end
>>>>>>> upstream/master
  def speak!
    "woof!"
  end
end

<<<<<<< HEAD
class Cat < Pet
  def stretched?
    @stretched
  end

  def stretch!
    @stretched = true
    "happy cat."
  end

  def speak!
    "meow."
  end
end

class Person
  def initialize
    @pets = []
  end

  def pets
    @pets
  end

  def walk(pet)
    pet.walk!
  end

  def feed(pet)
    pet.eat!
  end

  def showoff_pet_tricks
    @tricks = true
  end
end
=======
class Person
  attr_accessor :pets

  def initialize
    @pets = []

  end

end


class Game
  end


g = Game.new(50)
>>>>>>> upstream/master
