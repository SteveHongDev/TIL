//
//  ContentView.swift
//  foundation-m2l2-challenge
//
//  Created by 홍성범 on 2022/02/05.
//

import SwiftUI

struct Card {
    var number: Int
    var suit: Int
    var suitLabel: String {
        switch suit {
        case 1:
            return "Spades"
        case 2:
            return "Clubs"
        case 3:
            return "Hearts"
        case 4:
            return "Diamonds"
        default:
            return "ERROR"
        }
    }
    
    var numLabel: String {
        switch number {
        case 1:
            return "Ace"
        case 2...10:
            return String(number)
        case 11:
            return "Jack"
        case 12:
            return "Queen"
        case 13:
            return "King"
        default:
            return "ERROR"
        }
    }
}

struct ContentView: View {
    @State var deck = [Card]()
    @State var label = "Welcome!"
    
    
    var body: some View {
        VStack {
            Spacer()
            Text(label)
                .padding()
            Spacer()
            HStack {
                Spacer()
                Button("Generate") {
                    let numRnd = Int.random(in: 1...13)
                    let suitRnd = Int.random(in: 1...4)
                    
                    let newCard = Card(number: numRnd, suit: suitRnd)
                    
                    let isExist = deck.contains { card in
                        if card.number == newCard.number && card.suit == newCard.suit {
                            return true
                        } else {
                            return false
                        }
                    }
                    if isExist {
                        label = "Generated duplicate card."
                    } else {
                        deck.append(newCard)

                        label = "Generated a \(newCard.numLabel) of \(newCard.suitLabel)"
                    }
                }
                .padding(8)
                .background(.green)
                .foregroundColor(.white)
                .cornerRadius(10.0)
                Spacer()
                Button("Second") {
                    if deck.count == 0 {
                        label = "No cards in the deck."
                    } else {
                        let rnd = Int.random(in: 0...deck.count - 1)
                        
                        label = "Drew a \(deck[rnd].numLabel) of \(deck[rnd].suitLabel)"
                    }
                    
                }
                .padding(8)
                .background(.green)
                .foregroundColor(.white)
                .cornerRadius(10.0)
                Spacer()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
