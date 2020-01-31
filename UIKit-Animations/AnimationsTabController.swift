//
//  AnimationsTabController.swift
//  UIKit-Animations
//
//  Created by David Lin on 1/31/20.
//  Copyright © 2020 David Lin (Passion Proj). All rights reserved.
//

import UIKit

class AnimationsTabController: UITabBarController {

    private lazy var sampleAnimationsVC: SampleAnimationsController = {
       let viewcontroller = SampleAnimationsController()
        viewcontroller.tabBarItem = UITabBarItem(title: "Sample Animations", image: UIImage(systemName: "1.circle"), tag: 0)
        return viewcontroller
    }()
    
    
    private lazy var constraintsAnimationVC: ConstraintsAnimationController = {
       
        // ConstraintsAnimationController instance from storyboard
        
        // 1. Get instance of storyboard
        let constraintsAnimationStoryboard = UIStoryboard(name: "ConstraintsAnimation", bundle: nil)
        
        // 2. Instantiate view controller from storyboard instance
        guard let viewcontroller = constraintsAnimationStoryboard.instantiateViewController(identifier: "ConstraintsAnimationController") as? ConstraintsAnimationController else {
            fatalError("could not load ConstraintsAnimationController")
        }
        
        viewcontroller.tabBarItem = UITabBarItem(title: "Constraints Animation", image: UIImage(systemName: "2.circle"), tag: 1)
        return viewcontroller
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set ViewControllers for the tab bar
        // We will have two tabs in our app
        
        viewControllers = [sampleAnimationsVC, constraintsAnimationVC]
        
        
    }

}
