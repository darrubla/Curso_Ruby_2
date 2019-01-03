class Contact
    attr_writer :text,  :selected

    def initialize(text="")
        @text = text
        @selected = false
    end

    def to_s
        if @selected
            @text + ""
        else
            @text + ""
        end
    end

end

