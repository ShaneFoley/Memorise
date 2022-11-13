//
//  ContentView.swift
//  Memorise
//
//  Created by Shane Foley on 13/11/2022.
//


import SwiftUI

struct ContentView: View {
    var emojis: Array<String> = ["🚗","🚜", "🚑", "🚌", "🚒", "🏎", "🚃", "✈️", "🚤", "🛵", "🚓", "🚁", "🏍", "🛺","🚂","🛸","🛳","🚀","🚚","🚅"]
    
    
    
    @State var emojiCount = 20
    
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]){
                    ForEach(emojis[0..<emojiCount], id: \.self){ emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
            Spacer()
        }
        .padding(.horizontal)
    }
    
}



struct CardView: View {
    @State var isFaceUp: Bool = true
    var content: String
    
    var body: some View{
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 20)
                
            if isFaceUp{
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
                
            } else{
                    shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}






































// glues preview to contentView
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
