//
//  XibButton.swift
//  Pods
//
//  Created by Alex Burtnik on 8/31/17.
//
//

import Foundation
import UIKit

open class XibButton: UIButton {
    @IBOutlet var view: UIView!
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        let nibName = String(describing: type(of: self))
        UINib(nibName: nibName, bundle: Bundle.main).instantiate(withOwner: self, options: nil)
        addSubview(view)
        setupConstraints()
    }
    
    func setupConstraints() {
        self.view.translatesAutoresizingMaskIntoConstraints = false
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[view]|", options: NSLayoutFormatOptions.alignAllCenterY , metrics: nil, views: ["view": self.view]))
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[view]|", options: NSLayoutFormatOptions.alignAllCenterX , metrics: nil, views: ["view": self.view]))
    }
    
}
