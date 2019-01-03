require "./list.rb"
require "./contact.rb"

class Listapp
    attr_writer :list
    
    def initialize
        @list = List.new
    end

    def run
        puts "\n Bienvenido a la lista de compras"
        loop do
            puts "a - Agregar contacto"
            puts "r - Remover contacto por el nombre"
            puts "s - Mostrar un # de contacto por el nombre"
            puts "b - Borrar todos los contactos"
            puts "e - Salir de la aplicación"
            input = gets.chomp

            case input
            when 'a'
                puts "\n Agrega el nombre del contacto"
                name = gets.chomp
                puts "\n Agrega el # de contacto de #{name}"
                number = gets.chomp  
                @list.add_item(name, number)
                # eval("{test: 't_value'}")

            # when 'r'
            #     puts "\n Qué contacto deseas remover?"
            #     itemtr = gets.chomp
            #     @list.remove_item(itemtr.to_i)
            when 's'
                puts "\n El # de qué contacto deseas ver?"
                itemtm = gets.chomp
                @list.check_item(itemtm)
            # when 'b'
            #     puts "\n Deseas borrar todos los contactos (y/n) ?"
            #     confirmation = gets.chomp
            #     if confirmation != 'n' 
            #         @list.remove_all
            #         puts "\n Todos los contactos fueron borrados"
            #     end
            when 'e'
                break
            else 
                puts "opción no válida"
            end
            
            puts "\n Contactos"
            40.times {print "*"}
            puts
            @list.show_all
            40.times {print "+"}
            puts
        end

        puts "\n Saliste de tus contactos"

    end
end

list_app = Listapp.new
list_app.run
