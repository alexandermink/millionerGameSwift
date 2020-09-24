//
//  Realm.swift
//  MillionerGame
//
//  Created by Александр Минк on 13.09.2020.
//  Copyright © 2020 Alexander Mink. All rights reserved.
//

import Foundation
import RealmSwift

class RealmSingleton {
    
    static let realm = RealmSingleton()
    let connect: Realm
    
    
    private init() {
        connect = try! Realm()
    }
}
