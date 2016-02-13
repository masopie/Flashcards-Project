get '/' do
  @decks = Deck.where(user_id: nil)
  erb :'index'
end
