//
//  ConstraintsAnimationController.swift
//  UIKit-Animations
//
//  Created by David Lin on 1/31/20.
//  Copyright © 2020 David Lin (Passion Proj). All rights reserved.
//

import UIKit

class ConstraintsAnimationController: UIViewController {

    @IBOutlet weak var box: UIView!
    @IBOutlet weak var viewCenterY: NSLayoutConstraint!
    @IBOutlet weak var basketball: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        basketball.layer.cornerRadius = basketball.frame.size.height/2
        box.layer.cornerRadius = box.frame.size.height/2
    }
    
    @IBAction func animateViewUp(_ sender: UIButton) {
        // negative value to move up
        
        // constraint view upward movement to top of device
        
        // outlet to the blue box
        
        
        // TODO: deterime if view.frame.origin.y == 0 {return}
        
        if box.frame.origin.y == 0 {return}
        
        viewCenterY.constant -=  100
        
        // when we change the constaints in iOS and e need this change to be animated we only need to animate self.view.layoutIfNeeded and the animation will take place
        
        // layoutIfneeded will get called as the view is marked "dirty" by iOS, we implementing self.view.layoutIfNeeded in the animation block will cause the animation
        
        // animate button
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.4, initialSpringVelocity: 5.0, options: [.curveEaseInOut], animations: {
            
            sender.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            
        }) { (done) in
            sender.transform = CGAffineTransform.identity
            
        }
    }
    
    @IBAction func animateViewDown(_ sender: UIButton) {
        // positive value to go down
        viewCenterY.constant += 100
    }
    
    

}

