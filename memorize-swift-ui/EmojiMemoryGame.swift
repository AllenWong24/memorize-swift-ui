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
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🍏","🍎","🍐","🍊","🍋","🍌","🍉","🍇","🍓","🫐","🍈","🍒","🍑","🥭","🥬","🍍","🥥","🥝","🍅","🍆","🥑","🍔","🍟","🍞"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: {
            pairIndex in emojis[pairIndex]
        })
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}
