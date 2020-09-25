//
//  Array+Only.swift
//  Memorize
//
//  Created by Sidhant Kaushik on 2020-09-25.
//  Copyright © 2020 Sidhant Kaushik. All rights reserved.
//

import Foundation
extension Array {
    var only: Element? {
        count == 1 ? first: nil
    }
}
