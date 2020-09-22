//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Sidhant Kaushik on 2020-07-08.
//  Copyright © 2020 Sidhant Kaushik. All rights reserved.
//

import SwiftUI
struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        Grid(viewModel.cards) { card in
                CardView(card: card).onTapGesture{
                    self.viewModel.choose(card: card)
            }
    }
        .foregroundColor(Color.orange) //tell every view inside of the z stack to have a foreground color of orange
        .padding()
        // could put .font(Font.largeTitle) here if wanted
}
}


struct CardView: View{
    var card: MemoryGame<String>.Card
    
    
    var body: some View{
        GeometryReader(content: { geometry in
            self.body(for: geometry.size)
        })
    }
    //to stop it from doing the self error put it in a func
    func body(for size: CGSize) -> some View {
        ZStack/*content: not nessasary*/{
            if self.card.isFaceUp{
            RoundedRectangle(cornerRadius: cornerRadius)
               .stroke(lineWidth: edgeLineWidth)//.foregroundColor(Color.blue) //overriding the zstack color
           RoundedRectangle(cornerRadius: cornerRadius)
               .fill(Color.white)
            Text(self.card.content)
        }
            else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
        .font(Font.system(size: fontSize(for: size)))
    }
    
    //MARK: - Drawing Constants
    let cornerRadius: CGFloat = 10.0;
    let edgeLineWidth: CGFloat = 3;
    let fontScaleFactor: CGFloat = 0.75;
    func fontSize(for size: CGSize) -> CGFloat{
        min(size.width, size.height) * fontScaleFactor
    }
}


































struct EmojiMemoryGameView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}
