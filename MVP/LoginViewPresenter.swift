//
//  LoginViewPresenter.swift
//  MVP
//
//  Created by Peter Yorke on 3/6/17.
//  Copyright © 2017 Storke Brothers LLC. All rights reserved.
//

import UIKit

// MARK: - LoginViewPresenterProtocol protocol

protocol LoginViewPresenterProtocol {
    
    func didTapButton(_ name: String, _ password: String)
    
}

// MARK: - LoginViewPresenter class

class LoginViewPresenter {

    var controller: LoginViewController!

}

// MARK: - LoginViewPresenterProtocol extension

extension LoginViewPresenter: LoginViewPresenterProtocol {
    
    func didTapButton(_ name: String, _ password: String) {
        if name.isEmpty || password.isEmpty {
            controller.displayError("Name and Password must not be blank")
            
        } else if name == password {
            LoginNavigationHandler().goToPersonScreen(LoginInteractor().makeAPerson(name, password))
        } else {
            controller.displayError("Bad Name/Password")
        }
    }
    
}
