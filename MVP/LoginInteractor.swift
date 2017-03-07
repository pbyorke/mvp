//
//  LoginInteractor.swift
//  MVP
//
//  Created by Peter Yorke on 3/6/17.
//  Copyright © 2017 Storke Brothers LLC. All rights reserved.
//

import Foundation

// MARK: - LoginInteractorProtocol protocol

protocol LoginInteractorProtocol {
    
    func makeAPerson(_ name: String, _ password: String) -> Person
    
}

// MARK: - LoginInteractor class

class LoginInteractor {}

// MARK: - LoginInteractorProtocol extension

extension LoginInteractor: LoginInteractorProtocol {

    func makeAPerson(_ name: String, _ password: String) -> Person {
        return DataManager().makeAPersonFromNamePassword(name, password)
    }
    
}
