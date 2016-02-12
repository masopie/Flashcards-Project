get '/users/:user_id/decks/new' do
  redirect '/' unless params[:user_id] == session[:user_id]
  erb :'deck/new'
end


post '/users/:user_id/decks/:deck_id/cards' do
  redirect '/' unless params[:user_id] == session[:user_id]






post '/users/:user_id/decks' do
