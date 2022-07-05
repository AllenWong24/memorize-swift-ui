//
//  EmojiMemoryGame.swift
//  memorize-swift-ui
//
//  Created by Allen Wong on 2022/7/5.
//
//  ViewModel
//

import Foundation

class EmojiMemoryGame {
    static let emojis = ["🍏","🍎","🍐","🍊","🍋","🍌","🍉","🍇","🍓","🫐","🍈","🍒","🍑","🥭","🥬","🍍","🥥","🥝","🍅","🍆","🥑","🍔","🍟","🍞"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: emojis.count, createCardContent: {
            pairIndex in emojis[pairIndex]
        })
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
}
