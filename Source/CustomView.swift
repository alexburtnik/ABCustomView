
//
//  CustomView.swift
//  CORA
//
//  Created by Alex Burtnik on 3/29/17.
//  Copyright © 2017 alexburtnik. All rights reserved.
//

import Foundation
import UIKit

class CustomView: UIView {
    
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
        //for subclasses
    }
    
    func update() {
        for view in subviews {
            (view as? CustomView)?.update()
        }
    }
}
