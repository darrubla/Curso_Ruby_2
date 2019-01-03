require "./contact.rb"

class List
    attr_writer :items

    def initialize()
        @items = Hash.new()
    end

    def add_item(name,number)
        # item = Contact.new(text)
        @items.store(:"#{name}", "#{number}")
    end

    # def remove_item(name)
    #     @items.delete_at(name)
    # end

    def check_item(index)
        puts "\n #{@items[:"#{index}"]}"
    end

    # def remove_all
    #     @items.clear
    # end

    def show_all
        if @items.length == 0
            puts "no hay articulos en tu lista de contactos"
        else
           
            puts  @items.keys
           
        end
    end

end
