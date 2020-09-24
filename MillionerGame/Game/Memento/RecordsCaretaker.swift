//
//  RecordsCaretaker.swift
//  MillionerGame
//
//  Created by Александр Минк on 16.09.2020.
//  Copyright © 2020 Alexander Mink. All rights reserved.
//

import Foundation

class RecordsCaretaker {
    
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    
    private let key = "records"
    
    func save(records: [Int]) {
        do {
            let data = try encoder.encode(records)
            UserDefaults.standard.set(data, forKey: key)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func load() -> [Int] {
        guard let data = UserDefaults.standard.data(forKey: key) else { return [] }
        
        do {
            return try decoder.decode([Int].self, from: data)
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
    
}
