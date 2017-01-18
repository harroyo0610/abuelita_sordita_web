get '/' do
  @abuelita = params[:abuelita]
  
  erb :index
  # Visita app/views/index.erb
end

get '/abue' do
    user_input  = params[:user_input]
    if user_input == user_input.upcase
      @abuelita = "No te escucho!!"
    elsif user_input != "bye tqm"
      @abuelita = "No desde 1998"
    else
      @abuelita = "Adios hijito"
    end
    erb :index
end

post '/abuelita' do
  user_input = params[:user_input]
  user_input
  redirect to("/abue?user_input=#{user_input}")
end

