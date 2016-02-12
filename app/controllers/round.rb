get '/decks/:id' do
  @deck = Deck.find(params[:id])
  @round = Round.create(deck_id: @deck.id)
  # @round.user = current_user.id if current_user
  @round.cards.each do |card|
    Guess.create(round_id: @round.id, card_id: card.id)
  end
  redirect "/rounds/#{@round.id}"
end


get '/rounds/:id' do
  @round = Round.find(params[:id])
  @next_card = @round.guesses.where(correct: false).first.card
  # @round.user = current_user.id unless !current_user
  erb :'/round/show'
end

post '/rounds/:round_id/cards/:id' do
  @round = Round.find(params[:round_id])
  @card = Card.find(params[:id])
  guess = Guess.where(round_id: @round.id, card_id: @card.id).first
  if params[:attempt] == @card.answer
    @message = "Correct!"
    guess.update_attribute("correct", true)
    @next_card = @round.guesses.where(correct: false).first.card
    erb :'/round/show'
  else
    @message = "Incorrect:"
    @message += "The correct answer is #{@card.answer}"
    @next_card= @round.guesses.where(correct: false).shuffle.first.card
    guess.update_attribute("body",params[:attempt])
    erb :'/round/show'
  end
end

