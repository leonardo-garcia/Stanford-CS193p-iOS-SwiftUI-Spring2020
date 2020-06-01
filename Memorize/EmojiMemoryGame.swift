//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Leonardo Garcia  on 31/05/20.
//  Copyright © 2020 Leonardo Garcia. All rights reserved.
//

import SwiftUI

final class EmojiMemoryGame {
    
    private var model = EmojiMemoryGame.createMemoryGame()
    
    // MARK: - Access to the Model
    
    var cards: [MemoryGame<String>.Card] {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
} 

extension EmojiMemoryGame {
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🥑", "🙈", "💃🏻", "👁", "👄"]
        return MemoryGame<String>(numerOfPairsOfCards: Int.random(in: 2...emojis.count)) { pairIndex in
            return emojis[pairIndex]
        }
    }
}
