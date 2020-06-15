//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Leonardo Garcia  on 31/05/20.
//  Copyright © 2020 Leonardo Garcia. All rights reserved.
//

import SwiftUI

final class EmojiMemoryGame: ObservableObject {
    
    @Published private var model = EmojiMemoryGame.createMemoryGame()
    
    // MARK: - Access to the Model
    
    var cards: [MemoryGame<String>.Card] {
        return model.cards
    }
        
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
    func resetGame() {
        model = EmojiMemoryGame.createMemoryGame()
    }
} 

extension EmojiMemoryGame {
    private static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🥑", "🙈", "💃🏻", "👁", "👄"]
        return MemoryGame<String>(numberOfPairsOfCards: 3) { pairIndex in
            return emojis[pairIndex]
        }
    }
}
