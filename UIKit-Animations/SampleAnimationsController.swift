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
    


}
