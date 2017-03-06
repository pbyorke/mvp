//
//  InteractorProtocol.swift
//  MVP
//
//  Created by Peter Yorke on 3/6/17.
//  Copyright © 2017 Storke Brothers LLC. All rights reserved.
//

import Foundation

protocol InteractorProtocol {
    
    func makeAPerson(_ name: String, _ password: String) -> Person 
    
}
