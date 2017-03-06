//
//  GreetingRouter.swift
//  MVP
//
//  Created by Peter Yorke on 3/1/17.
//  Copyright © 2017 Storke Brothers LLC. All rights reserved.
//

import UIKit

class GreetingRouter {
    
    static let sharedInstance = GreetingRouter()
    
    func goToScene2(nav: UINavigationController) {
        let controller = Scene2ViewController()
        nav.pushViewController(controller, animated: true)
    }
    
}
