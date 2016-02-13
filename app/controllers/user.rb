get '/user/:id' do
  @user = User.find(params[:id])
  @decks = Deck.where(user_id: nil)
  erb :'/user/index'

end
# http://localhost:9393/public/team_monster.jpg
