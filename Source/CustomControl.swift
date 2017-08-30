//
//  CustomControl.swift
//  CORA
//
//  Created by Alex Burtnik on 7/26/17.
//  Copyright © 2017 alexburtnik. All rights reserved.
//

import Foundation
import UIKit

class CustomControl: UIControl {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override var frame: CGRect {
        didSet { update() }
    }
    
    func setup() {
        update()
    }
    
    func update() {
        for view in subviews {
            (view as? CustomView)?.update()
        }
    }
    
}
