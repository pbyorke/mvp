//
//  LoginNavigationHandler.swift
//  MVP
//
//  Created by Peter Yorke on 3/6/17.
//  Copyright © 2017 Storke Brothers LLC. All rights reserved.
//

import Foundation

// MARK: - LoginNavigationHandlerProtocol protocol

protocol LoginNavigationHandlerProtocol {
    
    func goToPersonScreen(_ person: Person)
    
}

// MARK: - LoginNavigationHandler class

class LoginNavigationHandler {
    
    let viewController = LoginViewController()
    private let presenter = LoginViewPresenter()

    init() {
        viewController.presenter = self.presenter
        presenter.controller = viewController
    }
    
}

// MARK: - LoginNavigationHandlerProtocol extension

extension LoginNavigationHandler: LoginNavigationHandlerProtocol {
    
    func goToPersonScreen(_ person: Person) {
        let controller = PersonNavigationHandler().viewController
        controller.person = person
        if let nav = viewController.navigationController {
            nav.pushViewController(controller, animated: true)
        }
    }
    
}
