require_relative 'racer_utils'

class RubyRacer
  attr_reader :players, :length

  def initialize(players, length = 30)
    @players = players
    @length = length
    @race_progress = {}
    @finished = false
    @winner_player = "sin ganador"
    #create hash with key:player and value sum metrics
    create_race

    #crear un dado
    @die = Die.new
  end

  def create_race
    @players.each {|player| @race_progress[player] = 0 }
  end

  # Devuelve true si uno de los jugadores llego a la meta, falso de lo contrario
  def finished?
    @finished
  end

  # Retorna el ganador si hay uno, nil de lo contrario
  def winner
    @winner_player
  end

  def not_advance_more_than_lenght?(player)
    @race_progress[player] < @length
  end
  
  def somebody_is_winner?(player)
    @race_progress[player] >= @length
  end

  def find_winners
    max_advance = @race_progress.values.max
    @winners = []

    @race_progress.each do |player, advance|
      if advance == max_advance
        @winners << player
      end
    end
  end

  def is_tied?
    find_winners
    if @winners.length <= 1
      false
    else
      true
    end
  end
  # Rueda el dado y avanza la posicion del jugador respectivo
  def advance_player!(player)
      # lanzo el dado
      if not_advance_more_than_lenght?(player)
        @race_progress[player] += @die.roll
        if somebody_is_winner?(player)
          if is_tied?
            @winner_player = @winners.join(", ")
            @finished = true
          else
            @winner_player = player
            @finished = true
          end       
        end
    end
  end

  # Imprime el tablero actual
  # El tablero siempre debe tener las mismas dimensiones
  # Debes imprimir encima del tablero anterior
  def print_board
    @race_progress.each do |player, advance|
      p advance
      puts "#{"-"*(advance >= @length ? @length : advance)}#{player}#{"/"*(advance >= @length ? 0 : @length-advance)}"
    end
  end
end

#=========== driver code ===========

players = ["A", "Z", "H", "M"]
game = RubyRacer.new(players)

# limpia la pantalla
clear_screen!

until game.finished?
  players.each do |player|
    # Mueve el cursor a la esquina derecha
    move_to_home!

    # imprimimos el tablero en su estado inicial
    game.print_board
    game.advance_player!(player)

    # tenemos que dormir un poquito, de lo contrario no vamos a ver nada del juego.
    # mira http://www.ruby-doc.org/core-1.9.3/Kernel.html#method-i-sleep
    sleep(0.5)
  end
end

# El juego termino
puts "---------Tablero final----------"
game.print_board

puts "El jugador'#{game.winner}' ha ganado!"
