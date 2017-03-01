//
//  GreetingPresenter.swift
//  MVP
//
//  Created by Peter Yorke on 3/1/17.
//  Copyright © 2017 Storke Brothers LLC. All rights reserved.
//

class GreetingPresenter : GreetingViewPresenter {
    
    unowned let view: GreetingView
    let person: Person
    
    required init(view: GreetingView, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = "Hello" + " " + person.firstName + " " + person.lastName
        view.setGreeting(greeting: greeting)
    }
    
}
