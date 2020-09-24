//
//  GameSessionCaretaker.swift
//  MillionerGame
//
//  Created by Александр Минк on 16.09.2020.
//  Copyright © 2020 Alexander Mink. All rights reserved.
//

import Foundation

class GameSessionCaretaker {
    
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    
    private let key = "gameSession"
    
    func save(gameSession: GameSession) {
        do {
            let data = try encoder.encode(gameSession)
            UserDefaults.standard.set(data, forKey: key)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func load() -> GameSession {
        guard let data = UserDefaults.standard.data(forKey: key) else { return GameSession() }
        
        do {
            return try decoder.decode(GameSession.self, from: data)
        } catch {
            print(error.localizedDescription)
            return GameSession()
        }
    }
}
