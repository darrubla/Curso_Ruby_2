require "sinatra"

def talleres_content(name)
   File.read("talleres/#{name}.txt")
rescue Errno::ENOENT
   return nil
end

def save_new_taller(name,description)
   File.open("talleres/#{name}.txt", "w")do |file|
      file.print(description)
   end
end

def delete_taller(name)
   File.delete("talleres/#{name}.txt")
end

get '/' do
   @files = Dir.entries("talleres")
   erb :home
end

get '/create' do
   erb :create
end

get '/:name/edit' do
   @name = params["name"]
   @description = params["description"]
   erb :edit
end

get '/:name' do
    @name = params[:name]
    @description = talleres_content(@name)
    erb :taller
end

post '/create' do
   @name = params["name"]
   @description = params["description"]
   @message = "de #{@name} fue creado "
   save_new_taller(@name, @description)
   erb :succesful
end

delete '/:name' do
   delete_taller(params[:name])
   @name = params["name"]
   @message = "de #{@name} fue eliminado "
   erb :succesful
end

put '/:name' do
   @name = params["name"]
   @description = params["description"]
   save_new_taller(@name, @description)
   erb :taller
end
