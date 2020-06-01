//
//  MemoryGame.swift
//  Memorize
//
//  Created by Leonardo Garcia  on 31/05/20.
//  Copyright © 2020 Leonardo Garcia. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    mutating func choose(card: Card) {
        print("Card chosen: \(card)")
        let choosenIndex: Int = self.index(of: card)
        self.cards[choosenIndex].isFaceUp = !self.cards[choosenIndex].isFaceUp
    }
    
    func index(of card: Card) -> Int {
        return cards.firstIndex { $0.id == card.id } ?? 0 // TODO: bogus!!
    }
    
    init(numerOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numerOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
        cards.shuffle()
    } 
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatch: Bool = false
        var content: CardContent
        var id: Int
    }
}
