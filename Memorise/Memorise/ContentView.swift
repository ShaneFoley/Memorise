//
//  ContentView.swift
//  Memorise
//
//  Created by Shane Foley on 13/11/2022.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .padding(.horizontal)
        .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
        
        
    }
}





struct CardView: View {
    @State var isFaceUp: Bool = true
    
    var body: some View{
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp{
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text("✈️")
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
