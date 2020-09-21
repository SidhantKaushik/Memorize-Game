//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Sidhant Kaushik on 2020-07-09.
//  Copyright © 2020 Sidhant Kaushik. All rights reserved.
//

import SwiftUI
struct randomNumber {
    static var random = Int.random(in: 2...5)
}
class EmojiMemoryGame: ObservableObject{
    /*private(set)/*glass door meaning only can view it but cant change it*/ var game: MemoryGame<String>*/
    @Published private var game: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻","🎃","🕷","🤮"]
        
        return MemoryGame<String>(numberOfPairsOfCards: randomNumber.random) {pairIndex in
            return emojis[pairIndex]
        }
    }
    // MARK - Access to the Model
    var cards: Array<MemoryGame<String>.Card>{
        game.cards
    }
    
    // MARK: -Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        game.choose(card: card)
    }
    
}

struct EmojiMemoryGame_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
