//
//  PersonNavigationHandler.swift
//  MVP
//
//  Created by Peter Yorke on 3/6/17.
//  Copyright © 2017 Storke Brothers LLC. All rights reserved.
//

import Foundation

// MARK: - PersonNavigationHandlerProtocol protocol

protocol PersonNavigationHandlerProtocol {
}

// MARK: - PersonNavigationHandler class

class PersonNavigationHandler {
    
    let viewController = PersonViewController()
    private let presenter = PersonViewPresenter()
    
    init() {
        viewController.presenter = self.presenter
        presenter.controller = viewController
    }
    
}

// MARK: - PersonNavigationHandlerProtocol extensioin

extension PersonNavigationHandler: PersonNavigationHandlerProtocol {}
