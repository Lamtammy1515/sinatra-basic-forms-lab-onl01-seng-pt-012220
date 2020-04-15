require_relative 'config/environment'

class App < Sinatra::Base

get '/' do 
  erb :display_puppy
end 

post '/create_puppy' do 
  @puppy = Puppy.new 
  @puppy.name = params[:name]
  @puppy.breed = params[:breed]
  @puppy.age = params[:age]
  
  erb :create_puppy
end
