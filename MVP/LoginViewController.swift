//
//  LoginViewController.swift
//  MVP
//
//  Created by Peter Yorke on 3/6/17.
//  Copyright © 2017 Storke Brothers LLC. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var presenter : LoginViewPresenter!
    
    // MARK: - Widgets
    private let greetingLabel: UILabel = {
        let widget = UILabel()
        widget.translatesAutoresizingMaskIntoConstraints = false
        widget.text = "Hello, World, time to log in"
        widget.textAlignment = .center
        return widget
    }()
    private let nameField: UITextField = {
        let widget = UITextField()
        widget.translatesAutoresizingMaskIntoConstraints = false
        widget.placeholder = "Enter Name"
        widget.borderStyle = .roundedRect
        widget.autocapitalizationType = .none
        widget.autocorrectionType = .no
        widget.spellCheckingType = .no
        return widget
    }()
    private let passwordField: UITextField = {
        let widget = UITextField()
        widget.translatesAutoresizingMaskIntoConstraints = false
        widget.placeholder = "Enter Password"
        widget.borderStyle = .roundedRect
        widget.isSecureTextEntry = true
        widget.autocapitalizationType = .none
        widget.autocorrectionType = .no
        widget.spellCheckingType = .no
        return widget
    }()
    private let loginButton: UIButton = {
        let widget = UIButton()
        widget.translatesAutoresizingMaskIntoConstraints = false
        widget.setTitle("Login", for: .normal)
        widget.setTitleColor(.blue, for: .normal)
        widget.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        return widget
    }()
    let errorLabel: UILabel = {
        let widget = UILabel()
        widget.translatesAutoresizingMaskIntoConstraints = false
        widget.textColor = .red
        widget.textAlignment = .center
        return widget
    }()
    
    // MARK: - UIViewController lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        print("LoginViewController.navigationController = \(navigationController)")
        
        prepareUI()
    }
    
    // MARK: - Button targets
    
    func didTapButton() {
        presenter.didTapButton(nameField.text!, passwordField.text!)
    }
    
    // MARK: - UI
    
    private func prepareUI() {
        view.backgroundColor = .white
        
        view.addSubview(greetingLabel)
        greetingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        greetingLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 168).isActive = true
        greetingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        greetingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        view.addSubview(nameField)
        nameField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameField.topAnchor.constraint(equalTo: greetingLabel.bottomAnchor, constant: 20).isActive = true
        nameField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        nameField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        nameField.delegate = self
        
        view.addSubview(passwordField)
        passwordField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordField.topAnchor.constraint(equalTo: nameField.bottomAnchor, constant: 20).isActive = true
        passwordField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        passwordField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        passwordField.delegate = self
        
        view.addSubview(loginButton)
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 20).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        view.addSubview(errorLabel)
        errorLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        errorLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20).isActive = true
        errorLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        errorLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
    }

}

// MARK: - LoginViewControllerProtocol

extension LoginViewController: LoginViewControllerProtocol {
    
    func displayError(_ error: String) {
        errorLabel.text = error
    }
    
}

// MARK: UITextFieldDelegate

extension LoginViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        errorLabel.text = ""
    }
    
}
