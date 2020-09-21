//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Sidhant Kaushik on 2020-07-08.
//  Copyright © 2020 Sidhant Kaushik. All rights reserved.
//

import SwiftUI
struct EmojiMemoryGameView: View {
    var viewModel: EmojiMemoryGame
    var body: some View {
        return HStack/*spacing: 2, could include this to remove the space between the rows*/{
            return ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture{ self.viewModel.choose(card: card)}
                
            }
    }
        .foregroundColor(Color.orange) //tell every view inside of the z stack to have a foreground color of orange
        .frame(width: 300, height: 500)
            .padding()
        .aspectRatio(2/3, contentMode: .fit)
        // could put .font(Font.largeTitle) here if wanted
}
}


struct CardView: View{
    var card: MemoryGame<String>.Card
    
    
    var body: some View{
        ZStack/*content: not nessasary*/{
            if card.isFaceUp{
                RoundedRectangle(cornerRadius: 10.0)
                   .stroke(lineWidth: 3)//.foregroundColor(Color.blue) //overriding the zstack color
               RoundedRectangle(cornerRadius: 10.0)
                   .fill(Color.white)
            }
                if randomNumber.random > 3 {
                Text(card.content)
                    .font(.body)
                }
                else {
                    Text(card.content)
                        .font(.largeTitle)
                }
            }
           
                          }
        }


































struct EmojiMemoryGameView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}
