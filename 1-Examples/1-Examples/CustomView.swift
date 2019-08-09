//
//  CustomView.swift
//  1-Examples
//
//  Created by Jonathan Rasmusson Work Pro on 2019-07-13.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

class CustomView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    func setupViews() {
        
        let stackView = makeStackView(withOrientation: .vertical)
        let scrollView = makeScrollView()

        scrollView.addSubview(stackView)
        view.addSubview(scrollView)
        
        // Pinning to the sides of view
        stackView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        
        // Pinning scrollview
        scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        // ScrollViews need an unbroken chain of constraints vertically and horizontally
        // If our RowView has no intrinsic content size width, we need to provide one here.
        
        
        for _ in 1...1 {
            let row = RowView()
            row.translatesAutoresizingMaskIntoConstraints = false
            stackView.addArrangedSubview(row)
            row.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        }

    }
    
//    func setupViews() {
//
//        let row1 = RowView()
//        let stackView = makeStackView(withOrientation: .vertical)
//
//        view.addSubview(stackView)
//
//        // Centering in the middle
////        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
////        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//
//        // Pinning to the sides
//        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
//        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
//
//    }

}


