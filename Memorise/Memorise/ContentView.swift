//
//  ContentView.swift
//  Memorise
//
//  Created by Shane Foley on 13/11/2022.
//


import SwiftUI

struct ContentView: View {
    var emojis: Array<String> = ["🚗","🚜", "🚑", "🚌", "🚒", "🏎", "🚃", "✈️"]
    @State var emojiCount = 6
    
    var body: some View {
        VStack{
            HStack{
                ForEach(emojis[0..<emojiCount], id: \.self){ emoji in
                    CardView(content: emoji)
                }
            }
            
            HStack{
                add
                Spacer()
                remove
            }.padding(.horizontal)
        }
        .padding(.horizontal)
        .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
    }
    
    
    
    
    
    
    
    
    var add :some View{
        Button(action: {
            emojiCount += 1
        }, label: {
            VStack{
                Text("+")
            }
        })
    }
    
    var remove: some View{
        Button(action: {
            emojiCount -= 1
        }, label: {
            VStack{
                Text("-")
            }
        })
        
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
                shape.stroke(lineWidth: 3)
                Text(content)
                    .font(.largeTitle)
                
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
