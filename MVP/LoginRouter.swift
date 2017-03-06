//
//  LoginRouter.swift
//  MVP
//
//  Created by Peter Yorke on 3/6/17.
//  Copyright © 2017 Storke Brothers LLC. All rights reserved.
//

import Foundation

class LoginRouter {
    
    let viewController = LoginViewController()
    private let presenter = LoginViewPresenter()
    static let sharedInstance = LoginRouter()

    init() {
        viewController.presenter = self.presenter
        presenter.controller = viewController
    }
    
}

// MARK: - LoginRouterProtocol

extension LoginRouter: LoginRouterProtocol {
    
    func goToPersonScreen(_ person: Person) {
        let controller = PersonRouter.sharedInstance.viewController
        controller.person = person
        if let nav = viewController.navigationController {
            nav.pushViewController(controller, animated: true)
        }
    }
    
}
