//
//  RedView.swift
//  NudgeTheLabel
//
//  Created by Jonathan Rasmusson Work Pro on 2019-08-23.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

class RedView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        backgroundColor = .red
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 100)
    }
    
}
