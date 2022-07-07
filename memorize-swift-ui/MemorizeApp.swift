//
//  memorize_swift_uiApp.swift
//  memorize-swift-ui
//
//  Created by Allen Wong on 2022/6/19.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
