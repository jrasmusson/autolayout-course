//
//  CustomView.swift
//  1-Examples
//
//  Created by Jonathan Rasmusson Work Pro on 2019-07-13.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

class StackSpacerView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        navigationItem.title = "Spacer"
        
        let stackView = makeStackView(withOrientation: .vertical)
        let scrollView = makeScrollView()
        
        scrollView.addSubview(stackView)
        view.addSubview(scrollView)
        
        for i in 1...40 {
            let row = RowView()
            stackView.addArrangedSubview(row)
            
            // Add a spacer every 5th row
            if i % 5 == 0 {
                stackView.addArrangedSubview(makeSpacerView(height: 200))
            }
            
            // Note: We need to adjust our width to take into account the extra padding on the side (16x2 = 32)
            row.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 1, constant: -32).isActive = true
        }
        
        // Pinning to the sides of view
        stackView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        
        // for padding and spacing
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 40, leading: 16, bottom: 40, trailing: 16)
        
        // Pinning scrollview
        scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
}


