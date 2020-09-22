//
//  Grid.swift
//  Memorize
//
//  Created by Sidhant Kaushik on 2020-09-21.
//  Copyright © 2020 Sidhant Kaushik. All rights reserved.
//

import SwiftUI

struct Grid<Item, ItemView>: View {
    var items: [Item]
    var viewForItem: (Item) -> ItemView
    
    init(_ items: [Item], viewForItem: @escaping (Item) -> ItemView){
        self.items = items
        self.viewForItem = viewForItem
    }
    
    var body: some View{
        Text("Hello, World!")
    }
}
