//
//  XibView.swift
//  DownRoute
//
//  Created by Alex Burtnik on 3/9/17.
//  Copyright © 2017 Tranda. All rights reserved.
//

import UIKit

open class XibView: CustomView {
    
    @IBOutlet var view: UIView!

    override open func setup() {
        super.setup()
        let nibName = String(describing: type(of: self))
        let nib = UINib(nibName: nibName, bundle: Bundle.main)
        nib.instantiate(withOwner: self, options: nil)
        addSubview(view)
        setupConstraints()
    }
    
    func setupConstraints() {
        self.view.translatesAutoresizingMaskIntoConstraints = false
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[view]|", options: NSLayoutFormatOptions.alignAllCenterY , metrics: nil, views: ["view": self.view]))
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[view]|", options: NSLayoutFormatOptions.alignAllCenterX , metrics: nil, views: ["view": self.view]))
    }

}


