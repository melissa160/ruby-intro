class Animal 
  def is_wild?
    @wild
  end
end

class Mammal < Animal
  def warm_blooded?
    true
  end
end

class Primate < Mammal
  @num_legs = 2
end

class Chimpanzee < Primate
  
end

class Amphibian < Animal
  def warm_blooded?
    false
  end
end

class Frog < Amphibian
  @num_legs = 4
end

class Bat < Mammal
  @num_legs = 2
end



