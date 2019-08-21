//
//  RedView.swift
//  1-Examples
//
//  Created by Jonathan Rasmusson Work Pro on 2019-08-13.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
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

