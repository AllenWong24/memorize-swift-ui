//
//  MemoryGame.swift
//  memorize-swift-ui
//
//  Created by Allen Wong on 2022/7/4.
//
//  Model
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    mutating func choose(_ card: Card) {
        let index = cards.firstIndex(where: {c in c.id == card.id})
        if index != nil {
            cards[index ?? 0].isFaceUp.toggle()
        }
        print(cards)
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
