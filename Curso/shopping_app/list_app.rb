require "./list.rb"
require "./item.rb"


# Agregar un articulo   
# Remover articulo
# Ver todos los articulos
# Marcar un determinado articulo
# Borrar todos los articulos 
# Salir de la aplicación

class Listapp
    attr_writer :list
    
    def initialize
        @list = List.new
    end

    def run
        puts "\n Bienvenido a la lista de compras"
        loop do
            puts "a - Agregar articulo"
            puts "r - Remover articulo"
            puts "m - Marcar un articulo"
            puts "b - Borrar todos los articulos"
            puts "e - Salir de la aplicación"
            input = gets.chomp

            case input
            when 'a'
                puts "\n Qué deseas agregar?"
                item = gets.chomp
                @list.add_item(item)
            when 'r'
                puts "\n Qué articulo deseas remover?"
                itemtr = gets.chomp
                @list.remove_item(itemtr.to_i)
            when 'm'
                puts "\n Qué articulo deseas marcar?"
                itemtm = gets.chomp
                @list.check_item(itemtm.to_i)
            when 'b'
                puts "\n Deseas borrar todos los articulos (y/n) ?"
                confirmation = gets.chomp
                if confirmation != 'n' 
                    @list.remove_all
                    puts "\n Todos los articulos fueron borrados"
                end
            when 'e'
                break
            else 
                puts "opción no válida"
            end
            40.times {print "*"}
            puts
            @list.show_all
            40.times {print "+"}
            puts
        end

        puts "\n Gracias por utilizarnos"

    end
end

list_app = Listapp.new
list_app.run
