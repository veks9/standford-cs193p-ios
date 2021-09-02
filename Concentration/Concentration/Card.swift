//
//  Card.swift
//  Concentration
//
//  Created by Ema Tomicic on 26.08.21.
//

import Foundation

struct Card: Hashable {
    
    var hashValue: Int { return identifier }
    
    static func ==(lsh: Card, rhs: Card) -> Bool {
        return lsh.identifier == rhs.identifier
    }
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
