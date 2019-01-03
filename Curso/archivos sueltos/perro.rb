class Perro
    # attr_reader :raza, :color, :edad
    # attr_writer :raza, :color, :edad
    attr_accessor :raza, :color, :edad
    def initialize(raza, color, edad)
       @raza = raza
       @color = color
       @edad = edad
    end

    def to_s
        "Soy de raza #{@raza} y tengo #{@edad} años"
    end


end

