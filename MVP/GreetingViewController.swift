//
//  GreetingViewController.swift
//  MVP
//
//  Created by Peter Yorke on 3/1/17.
//  Copyright © 2017 Storke Brothers LLC. All rights reserved.
//

import UIKit

class GreetingViewController : UIViewController, GreetingView {
    
    var presenter: GreetingViewPresenter!
    private let showGreetingButton: UIButton = {
        let bttn = UIButton()
        bttn.setTitle("Greet", for: .normal)
        bttn.setTitleColor(.blue, for: .normal)
        bttn.translatesAutoresizingMaskIntoConstraints = false
        bttn.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        return bttn
    }()
    private let greetingLabel: UILabel = {
        let lab = UILabel()
        lab.translatesAutoresizingMaskIntoConstraints = false
        lab.backgroundColor = .green
        return lab
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
    }
    
    func didTapButton(button: UIButton) {
        presenter.showGreeting()
    }
    
    func setGreeting(greeting: String) {
        greetingLabel.text = greeting
    }
    
    private func prepareUI() {
        view.backgroundColor = .white
        
        view.addSubview(showGreetingButton)
        showGreetingButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showGreetingButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        showGreetingButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        showGreetingButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        view.addSubview(greetingLabel)
        greetingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        greetingLabel.topAnchor.constraint(equalTo: showGreetingButton.bottomAnchor, constant: 40).isActive = true
    }
    
}
