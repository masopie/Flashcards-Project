get '/user/:id' do
  @user = User.find(params[:id])
  @decks = Deck.all
  erb :'/user/index'
end
