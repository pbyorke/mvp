//
//  PersonRouter.swift
//  MVP
//
//  Created by Peter Yorke on 3/6/17.
//  Copyright © 2017 Storke Brothers LLC. All rights reserved.
//

import Foundation

// MARK: - PersonRouterProtocol protocol

protocol PersonRouterProtocol {
}

// MARK: - PersonRouter class

class PersonRouter {
    
    let viewController = PersonViewController()
    private let presenter = PersonViewPresenter()
    static let sharedInstance = PersonRouter()
    
    init() {
        viewController.presenter = self.presenter
        presenter.controller = viewController
    }
    
}

// MARK: - PersonRouterProtocol extensioin

extension PersonRouter: PersonRouterProtocol {}
