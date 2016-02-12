deck1 = Deck.create(name: "state_capitals")
c1 = Card.create(question: "Texas", answer: "Austin")
c2 = Card.create(question: "Illinois", answer: "Springfield")
c3 = Card.create(question: "California", answer: "Sacremento")
c4 = Card.create(question: "Kansas", answer: "Topeka")
c5 = Card.create(question: "Pennsylvania", answer: "Harrisburg")
c6 = Card.create(question: "Iowa", answer: "Des Moines")

Card.all.each {|card| deck1.cards << card}


