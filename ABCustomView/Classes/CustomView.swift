
//
//  CustomView.swift
//  CORA
//
//  Created by Alex Burtnik on 3/29/17.
//  Copyright © 2017 alexburtnik. All rights reserved.
//

import Foundation
import UIKit

open class CustomView: UIView {
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override open var frame: CGRect {
        didSet { update() }
    }
    
    open func setup() {
        update()
        //for subclasses
    }
    
    open func update() {
        for view in subviews {
            (view as? CustomView)?.update()
        }
    }
}
