//
//  Game.swift
//  MillionerGame
//
//  Created by Александр Минк on 03.09.2020.
//  Copyright © 2020 Alexander Mink. All rights reserved.
//

import Foundation


class Game {
    
    static let instance = Game()
    
    private let recordsCaretaker = RecordsCaretaker()
    private let gameSessionCaretaker = GameSessionCaretaker()
    
    var records: [Int] {
        didSet {
            recordsCaretaker.save(records: records)
        }
    }
    
    var gameSession: GameSession? {
        didSet {
            gameSessionCaretaker.save(gameSession: gameSession!)
        }
    }
    
    
    private init() {
        self.records = recordsCaretaker.load()
        self.gameSession = gameSessionCaretaker.load()
    }
    
}
