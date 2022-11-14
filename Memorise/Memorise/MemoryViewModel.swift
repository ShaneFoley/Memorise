//
//  MemoryViewModel.swift
//  Memorise
//
//  Created by Shane Foley on 13/11/2022.
//

import SwiftUI




class MemoryViewModel: ObservableObject {
    static let emojis = ["🚗","🚜", "🚑", "🚌", "🚒", "🏎", "🚃", "✈️", "🚤", "🛵", "🚓", "🚁", "🏍", "🛺","🚂","🛸","🛳","🚀","🚚","🚅"]
    
    static func createMemoryGame() -> MemoryModel<String> {
        MemoryModel<String>(numberOfPairsOfCards: 3) { pairIndex in
            MemoryViewModel.emojis[pairIndex]
        }
    }

    
    
    @Published private var model: MemoryModel<String> = MemoryViewModel.createMemoryGame()
        
    var cards: Array<MemoryModel<String>.Card>{
        return model.cards
    }
    
    
    func choose(_ card: MemoryModel<String>.Card) {
       // objectWillChange.send() dont need cause @published, auto changes
        model.choose(card)
    }
}
