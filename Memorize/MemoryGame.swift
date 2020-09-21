//
//  MemoryGame.swift
//  Memorize
//
//  Created by Sidhant Kaushik on 2020-07-09.
//  Copyright © 2020 Sidhant Kaushik. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent>{
    var cards: Array<Card>
    mutating func choose(card: Card){
        print("card chosen: \(card)")
        let chosenIndex: Int = index(of: card)
        self.cards[chosenIndex].isFaceUp = !self.cards[chosenIndex].isFaceUp
    }
    func index(of card: Card) -> Int {
        for index in 0..<cards.count{
            if cards[index].id == card.id {
                return index;
            }
        }
        return -1;
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent){
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards-1{
        let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
        cards.shuffle()
    }
    
    struct Card: Identifiable{
        
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    
    }
}
