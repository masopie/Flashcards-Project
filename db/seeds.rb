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

deck3= Deck.create(name: "Roman Emperors")
a1 = Card.create(question: "Which Emperor died in a failed invasion of Italy in AD 340", answer: "Constantine II")
a2 = Card.create(question: "Which Emperor was murdered with his father in 253 by mutinous troops in Interamna?", answer: "Volusianus")
a3 = Card.create(question: "Which Emperor was held prisoner by the Sassanid King Shapur I from AD 260 to the end of his life?", answer: "Valerian")
a4 = Card.create(question: "Which Emperor was assassinated by the Praetorian Guard with the intention of forming a new Republic only to have his uncle crowned in his place?", answer: "Caligula")


cards3 = [a1, a2, a3, a4]
cards3.each {|card| deck3.cards << card}

deck4= Deck.create(name: "Rhetorical Questions")
b1 = Card.create(question: "Who are you, really?", answer: "Number 1")
b6 = Card.create(question: "How can we be lovers if we can't be friends?", answer: ":(")
b5 = Card.create(question: "Wouldn't it be nice?", answer: ":)")
b2 = Card.create(question: "What is?", answer: "The Daily Double")
b3 = Card.create(question: "This is a flashcard.", answer: "Is it though?")
b4 = Card.create(question: "Look out!", answer: "Backpack.")


cards4 = [b1, b2, b3, b4, b5, b6]
cards4.each {|card| deck4.cards << card}
