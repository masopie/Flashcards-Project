get '/user/:user_id/decks/new' do
  puts params[:user_id]
  puts session[:user_id]
  redirect '/' unless session[:user_id]
  @deck = Deck.create(name: "default", user_id: current_user.id)
  @user = User.find(current_user.id)
  erb :'deck/new'
end


post '/user/:user_id/decks/:deck_id' do
  redirect '/' unless session[:user_id]
  @deck = Deck.find(params[:deck_id])
  @deck.update_attribute("name", params[:title])
  erb :'deck/new_card'
end

post '/user/:user_id/decks/:deck_id/card' do
  redirect '/' unless session[:user_id]
  @deck = Deck.find(params[:deck_id])
  card = Card.new(question: params[:question], answer: params[:answer])
  @deck.cards << card
  erb :'deck/new_card'
end
