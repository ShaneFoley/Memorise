//
//  MemoryViewModel.swift
//  Memorise
//
//  Created by Shane Foley on 13/11/2022.
//

import SwiftUI




class MemoryViewModel {
    
    static let emojis = ["🚗","🚜", "🚑", "🚌", "🚒", "🏎", "🚃", "✈️", "🚤", "🛵", "🚓", "🚁", "🏍", "🛺","🚂","🛸","🛳","🚀","🚚","🚅"]
    
    static func createMemoryGame() -> MemoryModel<String> {
        MemoryModel<String>(numberOfPairsOfCards: 4) { pairIndex in
            MemoryViewModel.emojis[pairIndex]
        }
    }

    private var model: MemoryModel<String> = MemoryViewModel.createMemoryGame()
        
    var cards: Array<MemoryModel<String>.Card>{
        return model.cards
    }
}
