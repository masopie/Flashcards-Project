deck1 = Deck.create(name: "State Capitals")
c1 = Card.create(question: "Texas", answer: "Austin")
c2 = Card.create(question: "Illinois", answer: "Springfield")
c3 = Card.create(question: "California", answer: "Sacremento")
c4 = Card.create(question: "Kansas", answer: "Topeka")
c5 = Card.create(question: "Pennsylvania", answer: "Harrisburg")
c6 = Card.create(question: "Iowa", answer: "Des Moines")

cards1 = [c1, c2, c3, c4, c5, c6]
cards1.each {|card| deck1.cards << card}

deck2 = Deck.create(name: "US Presidents by year")
c7 = Card.create(question: "1789-1797", answer: "George Washington")
c8 = Card.create(question: "1797-1801", answer: "John Adams")
c9 = Card.create(question: "1825-1829", answer: "John Quincy Adams")
c10 = Card.create(question: "1801-1809", answer: "Thomas Jefferson")
c11 = Card.create(question: "1901-1909", answer: "Theodore Roosevelt")
c12 = Card.create(question: "1933-1945", answer: "Franklin Roosevelt")

cards2 = [c7, c8, c9, c10, c11, c12]
cards2.each {|card| deck2.cards << card}

deck3= Deck.create(name: "US Presidents by year")
a1 = Card.create(question: "1789-1797", answer: "George Washington")
a2 = Card.create(question: "1797-1801", answer: "John Adams")
a3 = Card.create(question: "1825-1829", answer: "John Quincy Adams")
a4 = Card.create(question: "1801-1809", answer: "Thomas Jefferson")
a5 = Card.create(question: "1901-1909", answer: "Theodore Roosevelt")
a6 = Card.create(question: "1933-1945", answer: "Franklin Roosevelt")

cards3 = [a1, a2, a3, a4, a5, a6]
cards3.each {|card| deck3.cards << card}

