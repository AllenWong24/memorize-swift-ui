//
//  EmojiMemoryGame.swift
//  memorize-swift-ui
//
//  Created by Allen Wong on 2022/7/5.
//
//  ViewModel
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    static let emojis = ["🍏","🍎","🍐","🍊","🍋","🍌","🍉","🍇","🍓","🫐","🍈","🍒","🍑","🥭","🥬","🍍","🥥","🥝","🍅","🍆","🥑","🍔","🍟","🍞"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: {
            pairIndex in emojis[pairIndex]
        })
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
