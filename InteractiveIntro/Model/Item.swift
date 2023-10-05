//
//  Item.swift
//  InteractiveIntro
//
//  Created by Twinbit on 2/10/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
