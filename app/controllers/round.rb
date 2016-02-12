get '/rounds/:id' do
  @deck = Deck.find(params[:id])
  @round = Round.new
  @round.deck = @deck
  @card = @round.cards.first
  # @round.user = current_user.id unless !current_user


  erb :'/round/show'
end

get '/decks/:deck_id/cards/:id' do
  @deck = Deck.find(params[:deck_id])
end



post '/rounds/:round_id/cards/:id' do
  @round = Round.find(params[:round_id])
  @card = Card.find(params[:id])
  guess = Guess.new(round_id: @round.id, card_id: @card.id, body: params[:attempt])
  if params[:attempt] == @card.answer
    @message = "Correct!"
    guess.correct = true

    erb :'/round/show'
  else
    @message = "Incorrect:"
    @message += "The correct answer is #{@card.answer}"

    erb :'/round/show'
  end
end

