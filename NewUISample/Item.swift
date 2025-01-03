//
//  Item.swift
//  NewUISample
//
//  Created by 515148076 on 03/01/25.
//

import Foundation
import SwiftData

@available(iOS 17, *)
@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
