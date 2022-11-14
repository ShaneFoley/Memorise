//
//  MemoriseApp.swift
//  Memorise
//
//  Created by Shane Foley on 13/11/2022.
//

import SwiftUI

@main
struct MemoriseApp: App {
    let game = MemoryViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
