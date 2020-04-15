require_relative 'config/environment'

class App < Sinatra::Base

get '/' do 
  erb :display_puppy
end 

get '/new' do 
erb :create_puppu
end 
  
post '/puppy' do 
  @puppy = Puppy.new 
  @puppy.name = params[:name]
  @puppy.breed = params[:breed]
  @puppy.age = params[:age]
  
  erb :display_puppy
end 

end
