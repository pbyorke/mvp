//
//  Interactor.swift
//  MVP
//
//  Created by Peter Yorke on 3/6/17.
//  Copyright © 2017 Storke Brothers LLC. All rights reserved.
//

import Foundation

class Interactor {
    
    static let sharedInstance = Interactor()
    
}

// MARK: - InteractorProtocol

extension Interactor: InteractorProtocol {

    func makeAPerson(_ name: String, _ password: String) -> Person {
        return Person(name: name, password: password)
    }
    
}
