//
//  GreetingViewPresenter.swift
//  MVP
//
//  Created by Peter Yorke on 3/1/17.
//  Copyright © 2017 Storke Brothers LLC. All rights reserved.
//

protocol GreetingViewPresenter {
    
    init(view: GreetingView, person: Person)
    func showGreeting()
    
}
