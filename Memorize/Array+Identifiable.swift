//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Sidhant Kaushik on 2020-09-25.
//  Copyright © 2020 Sidhant Kaushik. All rights reserved.
//

import Foundation
extension Array where Element:Identifiable{
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count{
            if self[index].id == matching.id {
                return index;
            }
        }
        return nil
    }
}
