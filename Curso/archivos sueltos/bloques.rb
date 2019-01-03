def hello(num1, num2) 
    puts "Hola desde la función"
    suma = num1+num2
    yield(suma)
end

hello(3,4) do |index|
    puts "hola la suma da = #{index}"
end