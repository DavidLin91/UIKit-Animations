//
//  AnimationsTabController.swift
//  UIKit-Animations
//
//  Created by David Lin on 1/31/20.
//  Copyright © 2020 David Lin (Passion Proj). All rights reserved.
//

import UIKit

class AnimationsTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set ViewControllers for the tab bar
        // We will have two tabs in our app
        
        viewControllers = [SampleAnimationsController(), ConstraintsAnimationController()]
        
        
    }

}
