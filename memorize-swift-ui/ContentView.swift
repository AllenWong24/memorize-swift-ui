//
//  ContentView.swift
//  memorize-swift-ui
//
//  Created by 黄家健 on 2022/6/19.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🍏","🍎","🍐","🍊","🍋","🍌","🍉","🍇","🍓","🫐","🍈","🍒","🍑","🥭","🥬","🍍","🥥","🥝","🍅","🍆","🥑","🍔","🍟","🍞"]
    var body: some View {
        Text("Hello, Swift UI!")
            .padding(.all)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
