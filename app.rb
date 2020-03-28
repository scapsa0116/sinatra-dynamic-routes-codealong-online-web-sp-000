require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    erb :index
   
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/goodbye/:name' do 
    @user_name = params[:name]
   erb :goodbye
  end 
  
  get '/multiply/:num1/:num2' do 
  @user_name.select do |user|
    user.id == params[:id]
  end.first 
end 
  
  

end