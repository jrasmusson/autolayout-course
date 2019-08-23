//
//  BlueView.swift
//  NudgeTheLabel
//
//  Created by Jonathan Rasmusson Work Pro on 2019-08-23.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

//
// Challenge: Set the constraints on the label in this view so that when the
//            view is in portrait, the label is 8pts from the top (topAnchor)
//            and when the view is in landscape, it is centered vertically (centerY).
//

class BlueView: UIView {
    
    var topAnchorConstraint = NSLayoutConstraint()
    var centerYAnchorConstraint = NSLayoutConstraint()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        backgroundColor = .blue
        
        let label = makeLabel(withText: "Adjusting constraints", size: 24)
        
        addSubview(label)
        
        // Static constraints
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        // Dynamic constraints
        topAnchorConstraint = label.topAnchor.constraint(equalTo: topAnchor, constant: 8)
        centerYAnchorConstraint = label.centerYAnchor.constraint(equalTo: centerYAnchor)
        
        adjustConstraints()
    }
    
    func adjustConstraints() {
        if UIApplication.shared.statusBarOrientation.isPortrait {
            // Fill in these values here
        } else {
            // Fill in these values here
        }
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 200)
    }
    
}
