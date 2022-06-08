#MÓDULOS DEL REQUERIMIENTO
module Habilidades
    module Volador
        def volar
            puts 'Estoy volandooooo!'
        end
    
        def aterrizar
            puts 'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
            puts 'Estoy nadando!'
        end
    
        def sumergir
            puts 'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
            puts 'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            puts 'Puedo comer plantas!'
        end
    end
    
    module Carnivoro
        def comer
            puts 'Puedo comer carne!'
        end
    end
    module Carroniero
        def comer
            puts 'Me como alimento de basura y restos'
        end
    end
end

# Requerimiento 1
class Animal
    attr_accessor :nombre
    def initialize (nombre)
        @nombre = nombre
    end   
end 

# Requerimiento 2
class Ave < Animal
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
    include Alimentacion::Carnivoro
    include Alimentacion::Carroniero
end

class Mamifero < Animal
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
    include Alimentacion::Carnivoro
end

class Insecto < Animal
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

# Requerimiento 3
class Pinguino < Ave
    include Habilidades::Nadador
    include Alimentacion::Carnivoro
end

class Paloma < Ave
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Carroniero
end

class Pato < Ave
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Habilidades::Volador
    include Habilidades::Carnivoro
end

# Requerimiento 4
class Perro < Mamifero
    include Alimentacion::Carnivoro
    include Habilidades::Caminante
end

class Gato < Mamifero
    include Alimentacion::Carnivoro
    include Habilidades::Caminante
end

class Vaca < Mamifero
    include Alimentacion::Herbivoro
    include Habilidades::Caminante
end

# Requerimiento 5
class Mosca < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
end

class Mariposa < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
end

class Abeja < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
end

vaca1 = Vaca.new('Lola').nadar
gato1 = Gato.new('Michi').comer
pato1 = Pato.new('Donald').volar
