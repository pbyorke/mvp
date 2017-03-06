//
//  PersonViewController.swift
//  MVP
//
//  Created by Peter Yorke on 3/6/17.
//  Copyright © 2017 Storke Brothers LLC. All rights reserved.
//

import UIKit

class PersonViewController: UIViewController {
    
    var person: Person?
    var presenter: PersonViewPresenter!
    
    // MARK: - Widgets
    private let nameLabel: UILabel = {
        let widget = UILabel()
        widget.translatesAutoresizingMaskIntoConstraints = false
        widget.textAlignment = .center
        return widget
    }()
    
    // MARK: - UIViewController lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
    }
    
    // MARK: - UI
    
    private func prepareUI() {
        view.backgroundColor = .white
        
        view.addSubview(nameLabel)
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 168).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true

        if let person = person {
            nameLabel.text = "Your name is \(person.name)"
        }
    }
    
}

// MARK: - PersonViewControllerProtocol

extension PersonViewController: PersonViewControllerProtocol {}

