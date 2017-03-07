//
//  DataManager.swift
//  MVP
//
//  Created by Peter Yorke on 3/7/17.
//  Copyright © 2017 Storke Brothers LLC. All rights reserved.
//

import Foundation

protocol DataManagerProtocol {

    func makeAPersonFromNamePassword(_ name: String, _ password: String) -> Person
    
}

class DataManager {}

extension DataManager: DataManagerProtocol {
    
    func makeAPersonFromNamePassword(_ name: String, _ password: String) -> Person {
        return Person(name: name, password: password)
    }
    
}
