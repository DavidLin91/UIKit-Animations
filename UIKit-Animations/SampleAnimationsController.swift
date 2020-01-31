//
//  SampleAnimationsController.swift
//  UIKit-Animations
//
//  Created by David Lin on 1/31/20.
//  Copyright © 2020 David Lin (Passion Proj). All rights reserved.
//

import UIKit

class SampleAnimationsController: UIViewController {
    
    private let sampleAnimationsView = SampleAnimationView()
    
    
    override func loadView() {
        view = sampleAnimationsView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        scaleAnimation()
        // pulsatingAimation()
    }
    
    
    private func scaleAnimation() {
        
        // properties we could animate
        /*
         - alpha
         - corner radius
         - position
         - center
         - translate
         - color
         - shadow
         - opacity
         - transition
         - background color
         */
        
        // any transform value of 1.0 represents the identity of the view
        UIView.animate(withDuration: 0.3, delay: 0.0, options: [], animations: {
            self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform(scaleX: 10.0, y: 10.0)
            self.sampleAnimationsView.pursuitLogo.alpha = 0.0
            self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        }) { (done) in
            // gets called after initial animation is done
            UIView.animate(withDuration: 0.3) {
                self.sampleAnimationsView.swiftLogo.isHidden = false
                self.sampleAnimationsView.swiftLogo.layer.cornerRadius = self.sampleAnimationsView.swiftLogo.bounds.size.width / 2.0
                
            }
        }
    }
    
    private func pulsatingAimation() {
        UIView.animate(withDuration: 0.3, delay: 0.0, options: [.repeat, .autoreverse], animations: {
            // animation block
            self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }) {(done) in
            // code to be executed after animation is complete
            // options - you can reset view's value
            // options - create another animation
            
            UIView.animate(withDuration: 0.3) {
                self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform.identity // restores back to original state
            }
            
            // NB: if you want to go beyond creating an animation in this completion handler, the better choice would be animateKeyFrames()
            
        }
    }
}
